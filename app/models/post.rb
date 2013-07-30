class Post < ActiveRecord::Base


  attr_accessible :title, :description, :days

  def self.postdays
    @posts =  Post.all
    unless @posts.blank?
      @posts.each do |post|
        @days = (Date.today - post.created_at.to_date).to_i
        post.update_attributes(:days => @days)
      end
    end
  end

end
