class RenameAttorneyProfileColumnName < ActiveRecord::Migration
  def up
  	rename_column :attorneys, :Profile, :profile
  end

  def down
  end
end
