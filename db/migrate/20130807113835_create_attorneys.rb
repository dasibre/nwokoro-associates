class CreateAttorneys < ActiveRecord::Migration
  def change
    create_table :attorneys do |t|
    	t.string :first_name
    	t.string :last_name
    	t.text	 :Profile
    	

      t.timestamps
    end
  end
end
