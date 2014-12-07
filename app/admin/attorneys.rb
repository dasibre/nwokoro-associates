ActiveAdmin.register Attorney, :as => 'Associates' do
index do                            
    column :first_name                     
    column :last_name  
    column :title
    column :profile          
    column :avatar do |p|
    	image_tag p.avatar.url(:medium)
    end           
    default_actions                   
  end 

   show do |attorney|
   	attributes_table do
   		row :first_name
   		row :last_name
      row :title
   		row	:profile
   		row	:avatar do |p|
   			image_tag p.avatar.url(:medium)
   		end
    end
   end   

   form do |f|
    f.inputs do 
    f.input :first_name
    f.input :last_name
    f.input :title, as: :select, :collection => ['Principal', 'Senior Associate', 'Associate', 'Employee']
    f.input :profile, :label => 'Attorney Profile'
    f.input :avatar, :label => 'Profile Photo'
   end
     f.actions
   end
end
