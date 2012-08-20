class Post < ActiveRecord::Base
  attr_accessible :content, :title, :category_ids

  validates :title, :content, :presence => true

  has_many :categorizations
  has_many :categories, :through => :categorizations

end
