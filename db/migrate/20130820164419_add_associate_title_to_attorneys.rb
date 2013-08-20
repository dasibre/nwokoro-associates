class AddAssociateTitleToAttorneys < ActiveRecord::Migration
  def change
  	add_column :attorneys, :title, :string
  end
end
