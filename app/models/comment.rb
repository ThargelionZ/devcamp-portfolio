class Comment < ApplicationRecord
  require 'obscenity/active_model'
  belongs_to :user
  belongs_to :blog
  
  validates :content, presence: true, length: { minimum: 5, maximum: 1000 }
  validates :content, obscenity: { sanitize: true, replacement: "[censored]" }
  
  after_create_commit { CommentBroadcastJob.perform_later(self) }
end
