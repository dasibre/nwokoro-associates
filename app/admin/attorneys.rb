ActiveAdmin.register Attorney, :as => "Associates" do
index do                            
    column :first_name                     
    column :last_name        
    column :profile          
    column :avatar do |p|
    	image_tag p.avatar.url
    end           
    default_actions                   
  end 

   show do |attorney|
   	attributes_table do
   		row :first_name
   		row :last_name
   		row	:profile
   		row	:avatar do |p|
   			image_tag p.avatar.url
   		end
       end
   end   

  form	:partial => "form"

end
