class Message

	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend ActiveModel::Naming

   validates :name, :email, :subject, :body, presence: true
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
