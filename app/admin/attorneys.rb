ActiveAdmin.register Attorney do
index do                            
    column :first_name                     
    column :last_name        
    column :Profile          
    column :avatar do |p|
    	image_tag p.avatar.url
    end           
    default_actions                   
  end 

   show do |attorney|
   	attributes_table do
   		row :first_name
   		row :last_name
   		row	:Profile
   		row	:avatar do |p|
   			image_tag p.avatar.url
   		end
       end
   end   

  form	:partial => "form"

end
