class Category < ActiveRecord::Base
  attr_accessible :name

  validates :name, :uniqueness => true

  belongs_to :post
  belongs_to :post_category
end
