'use strict'

const mongoose = require('mongoose')

const postSchema = new mongoose.Schema({
  title: {
    type: String,
    minlength: 1,
    maxlength: 100,
    required: true
  },
  body: {
    type: String,
    minlength: 1,
    maxlength: 500,
    required: true
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true,
  // do we even need this??
  toJSON: {
    virtuals: true,
    transform: function (doc, ret, options) {
      const userId = (options.user && options.user._id) || false
      ret.editable = userId && userId.equals(doc._owner)
      return ret
    }
  }
})

// NEED THIS??
// postSchema.virtual('length').get(function length () {
//   return this.text.length
// })

const Post = mongoose.model('Post', postSchema)

module.exports = Post
