class Message
	include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :email, :message, :name, :subject

  validates :name, :email, :message, :subject, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true

  def initialize(attributes = {})
  	attributes.each do |name, value|
  		send("#{name}=", value)
  	end
  end

  def persisted?
  	false
  end
end
