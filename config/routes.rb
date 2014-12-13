Nwokoroassociates::Application.routes.draw do

  resources :attorneys, only: [:index, :show]
  root :to => 'pages#home'

  match 'contact', to: 'contact#new', as: 'contact', via: :get
  match 'contact', to: 'contact#create', as: 'contact', via: :post


  match 'areas_of_practice', to: 'pages#areas_of_practice'
  match 'contact_us', to: 'pages#contact_us'
  match 'about_us', to: 'pages#about_us'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Blogit::Engine => '/news', as: 'news_blog'
end
