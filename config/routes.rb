Nwokoroassociates::Application.routes.draw do

 match 'contact', to: 'contact#new', as: 'contact', via: :get
 match 'contact', to: 'contact#create', as: 'contact', via: :post

  root :to => 'pages#home'
  
  # get "/news/posts", to: "blogit/posts#index"

  get 'areas_of_practice', to: 'pages#areas_of_practice'
  get 'contact_us', to: 'pages#contact_us'
  get 'about_us', to: 'pages#about_us'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Blogit::Engine => '/news', as: 'news_blog'
  
 resources :attorneys, only: [:index, :show]

end
