class Attorney < ActiveRecord::Base
	attr_accessible :avatar, :first_name, :last_name, :profile
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # attr_accessible :title, :body

  def full_name
  	"#{first_name} #{last_name}"
  end

  def to_param
  	"#{id} #{full_name}".parameterize
  end
end
