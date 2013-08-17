class Message

	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend ActiveModel::Naming

   validates :name, :subject, :body, presence: true
   validates :email, presence: true, format: { with: /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, message: "email format name@example.com" }
   attr_accessor :name, :email, :subject, :body

   def initialize(attributes = {})
   	attributes.each do |name,value|
   		send("#{name}=", value)
   	end
   end

   def persisted?
   	false
   end

end
