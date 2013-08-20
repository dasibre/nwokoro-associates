class NotificationsMailer < ActionMailer::Base
  default from: "direct@nwokoroassociates.com"
  default to: "direct@nwokoroassociates.com"

  def new_message(message)
  	@message = message
  	mail(subject: "Nwokoroassociates.com Client Message - #{@message.subject}")
  end
end
