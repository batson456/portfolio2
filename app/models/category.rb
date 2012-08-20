class Category < ActiveRecord::Base
  attr_accessible :category

	has_many :categorizations
	has_many :posts, :through => :categorizations  
end
