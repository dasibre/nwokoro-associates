class AddAvatarColumnsToAttorneys < ActiveRecord::Migration
  def change
  	add_attachment :attorneys, :avatar
  end

  def self.down
  	remove_attachment :attorneys, :avatar
  end
end
