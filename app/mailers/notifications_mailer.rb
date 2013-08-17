class NotificationsMailer < ActionMailer::Base
  default from: "jnaadjie@gmail.com"
  default to: "jnaadjie@afrails.com"

  def new_message(message)
  	@message = message
  	mail(subject: "[Nwokoroassociates.com) #{@message.subject}")
  end
end
