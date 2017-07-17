class BlogsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "blogs_#{params['blog_id']}_channel"
  end
  
  def unsubscribed
  end
  
  def send_comment(data)
    Comment.create!(content: data["comment"], blog_id: data["blog_id"], user_id: current_user.id)
    
    # current_user.comments.create!(content: data["comment"], blog_id: data["blog_id"])
  end
end