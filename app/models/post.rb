class Post < ActiveRecord::Base
  attr_accessible :content, :title, :category_ids, :image

  has_attached_file :image, :styles => { :medium => "600x200#", :thumb => "300x100#" }

  validates :title, :content, :image, :presence => true

  has_many :categorizations
  has_many :categories, :through => :categorizations

  PUBLISHED = 1
  FEATURED  = 2
  DRAFT     = 3
  ARCHIVED  = 4

  STATUSES = {
  	PUBLISHED = 'published',
  	ACTIVE    = 'featured',
  	DRAFT     = 'draft',
  	ARCHIVED  = 'archived'
  }

  def status_name
  	STATUSES[status]
  end

end
