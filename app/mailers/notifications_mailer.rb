class NotificationsMailer < ActionMailer::Base
  default from: "batson456@gmail.com"
 	default :to => "batson456@gmail.com" 

 	# Send an email from batson456@gmail.com for contact form
 	def send_message(message)
 		@message = message
 		mail(:subject => "brycebatson.com #{message.email}")
 	end

end
