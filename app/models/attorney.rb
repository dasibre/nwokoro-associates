class Attorney < ActiveRecord::Base
  TITLES = ['Principal', 'Senior Associate', 'Associate', 'Office Manger']

	attr_accessible :avatar, :first_name, :last_name, :profile, :title
	has_attached_file :avatar, :storage => :s3, :styles => { :medium => '300x300>', :thumb => '100x100>'}, :default_url => '/images/:style/missing.png'

  class << self
    def get_associates_order_by_title
      order("title LIKE 'Principal' DESC", "title LIKE 'Senior Associate' DESC")
    end

    def office_manager
      find_by_title(TITLES.last)
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def to_param
  	"#{id} #{full_name}".parameterize
  end
end
