class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :prepare_contact_form

	def prepare_contact_form
	  @message = Message.new
	end

end
