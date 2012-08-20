class Post < ActiveRecord::Base
  attr_accessible :content, :title

  validates :title, :content, :presence => true

  has_many :categories, :through => :post_categories

end
