class Attorney < ActiveRecord::Base
	attr_accessible :avatar, :first_name, :last_name, :profile, :title
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  def full_name
  	"#{first_name} #{last_name}"
  end

  def self.get_associates_order_by_title
  	order("title LIKE 'Principal' DESC", "title LIKE 'Senior Associate' DESC")
  end

  def to_param
  	"#{id} #{full_name}".parameterize
  end
end
