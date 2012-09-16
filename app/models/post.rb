class Post < ActiveRecord::Base
	before_create :create_slug
  attr_accessible :content, :title,:status, :category_ids, :image

  has_attached_file :image, :styles => { :medium => "600x200#", :thumb => "300x100#",:small => "75x75#" }

  validates :title, :content, :image, :presence => true

  has_many :categorizations
  has_many :categories, :through => :categorizations

  STATUSES = ['published', 'draft', 'featured', 'archived']

  validates_inclusion_of :status, :in => STATUSES, 
  	:message => "{{value}} must be in #{STATUSES.join ','}"


  def to_param
    slug
  end

  def create_slug
    self.slug = self.title.parameterize
  end

  scope :published, where("status = ? OR status = ?", 'featured', 'published')
  
end
