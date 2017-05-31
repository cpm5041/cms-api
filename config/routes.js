'use strict'

module.exports = require('lib/wiring/routes')

// create routes

// what to run for `GET /`
.root('root#root')

// standards RESTful routes
.resources('examples')

// users of the app have special requirements
.post('/sign-up', 'users#signup')
.post('/sign-in', 'users#signin')
.delete('/sign-out/:id', 'users#signout')
.patch('/change-password/:id', 'users#changepw')
.resources('users', { only: ['index', 'show'] })

// all routes created
.resources('posts')
.get('/userposts/:id', 'posts#indexUser')
// .get('/userposts/:id', 'posts#addComment')
.post('/posts/:id/comments', 'posts#addComment')
.patch('/posts/:id/comments/:comment_id', 'posts#updateComment')
.delete('/posts/:id/comments/:comment_id', 'posts#deleteComment')

.resources('pages')
.get('/userpages/:id', 'pages#indexUser')
