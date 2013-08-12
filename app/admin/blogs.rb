include Blogit
ActiveAdmin.register Blogit::Post, :as => "Post" do
	index do                            
    column :title                     
    column :body      
    column :created_at          
    column :updated_at
    default_actions                   
  end 

  menu label: "News Posts"
  form	:partial => "form"
end