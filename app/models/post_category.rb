class PostCategory < ActiveRecord::Base
  belongs_to :post
  belongs_to :category
  # attr_accessible :title, :body
end
