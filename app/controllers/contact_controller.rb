class ContactController < ApplicationController
  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(params[:message])

  	if @message.valid?
  		NotificationsMailer.send_message(@message).deliver
  		flash[:success] = "Thank you for your interest! I'll get back to you as soon as I can"
  		redirect_to root_url
  	end
  end
end
