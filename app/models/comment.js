'use strict'

const mongoose = require('mongoose')

const commentSchema = new mongoose.Schema({
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
  toJSON: {
    virtuals: true,
    transform: function (doc, ret, options) {
      const userId = (options.user && options.user._id) || false
      ret.editable = userId && userId.equals(doc._owner)
      return ret
    }
  }
})

const Comment = mongoose.model('Comment', commentSchema)

module.exports = Comment
