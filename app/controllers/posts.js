'use strict'

const controller = require('lib/wiring/controller')
const models = require('app/models')
const Post = models.post

const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

const index = (req, res, next) => {
  Post.find()
    .then(posts => res.json({
      posts: posts.map((e) =>
        e.toJSON({virtuals: true, user: req.user}))
    }))
    .catch(next)
}

const indexUser = (req, res, next) => {
  const owner = { _owner: req.user._id }
  Post.find(owner)
      .then(posts => res.json({ posts }))
      .catch(err => next(err))
}

const show = (req, res) => {
  res.json({
    post: req.post.toJSON({virtuals: true, user: req.user})
  })
}

const addComment = (req, res, next) => {
  const post = req.post
  const comment = Object.assign(req.body.comment, {
    postedBy: req.user._id
  })
  post.comments.push(comment)
  post.save()
    .then(post =>
      res.status(201)
        .json({
          post: post.toJSON({ virtuals: true, user: req.user })
        }))
    .catch(next)
}

const updateComment = (req, res, next) => {
  const post = req.post
  console.log('user id is:', req.user._id)
  console.log('comment is', req.body.comment)
  const comment = post.comments.find(comment => comment.id === req.params.comment_id)
  // console.log('req id type', typeof req.user._id)
  // console.log('posted by id type', typeof comment.postedBy)
  // req.user._id.toString()
  // comment.postedBy.toString()
  // console.log(!req.user._id.equals(comment.postedBy))
  if (!req.user._id.equals(comment.postedBy)) {
    throw new Error('Not Authorized')
  }
  comment.body = req.body.comment.body
  req.post.update(post)
    .then(() => res.sendStatus(204))
    .catch(next)
  // const comment = Object.assign(req.body.comment, {
  //   postedBy: req.user._id
  // })
  // post.comments.push(comment)
  // post.save()
  //   .then(post =>
  //     res.status(201)
  //       .json({
  //         post: post.toJSON({ virtuals: true, user: req.user })
  //       }))
  //   .catch(next)
}

const create = (req, res, next) => {
  const post = Object.assign(req.body.post, {
    _owner: req.user._id
  })
  Post.create(post)
    .then(post =>
      res.status(201)
        .json({
          post: post.toJSON({ virtuals: true, user: req.user })
        }))
    .catch(next)
}

const update = (req, res, next) => {
  delete req.body._owner  // disallow owner reassignment.
  req.post.update(req.body.post)
    .then(() => res.sendStatus(204))
    .catch(next)
}

const destroy = (req, res, next) => {
  req.post.remove()
    .then(() => res.sendStatus(204))
    .catch(next)
}

module.exports = controller({
  index,
  indexUser,
  show,
  create,
  update,
  destroy,
  addComment,
  updateComment
}, { before: [
  { method: setUser, only: ['index', 'show'] },
  { method: authenticate, except: ['index', 'show'] },
  { method: setModel(Post), only: ['show', 'addComment', 'updateComment'] },
  { method: setModel(Post, { forUser: true }), only: ['update', 'destroy'] }
] })
