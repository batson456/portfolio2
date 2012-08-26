class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :prepare_contact_form, :prepare_sidebar_data

	def prepare_contact_form
	  @message = Message.new
	end

	def prepare_sidebar_data
		@sidebar = Post.where('status = ? OR status = ?', 'featured', 'published').limit(10)
		@categories = Category.all
	end

end
