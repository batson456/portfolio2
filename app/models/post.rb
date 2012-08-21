class Post < ActiveRecord::Base
  attr_accessible :content, :title, :category_ids, :image

  has_attached_file :image, :styles => { :medium => "300x300#", :thumb => "100x100#" }

  validates :title, :content, :presence => true

  has_many :categorizations
  has_many :categories, :through => :categorizations

end
