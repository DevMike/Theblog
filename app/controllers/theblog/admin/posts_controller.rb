module Theblog
  class Admin::PostsController < Admin::ItemsController
    MODEL = Theblog::Post
    ATTRIBUTES = [:title, :slug, :description, {body: :wysihtml5}, :tags]
    INDEX = [:title, :description, :body, :category, :content_status]
    ASSOCIATIONS = [:category]
  end
end
