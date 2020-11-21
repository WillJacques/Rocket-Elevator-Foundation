Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  resources :elevators
  resources :batteries
  resources :customers
  resources :addresses

  resources :columns
  resources :building_details
  resources :buildings

  resource :quotes
  resources :interventions
  resources :leads

  resource :employees

  ActiveAdmin.routes(self)
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  #admin_root ''

  # GET routes
  get 'quote' => 'quotes#new'
  get 'intervention' => 'interventions#new'
  get 'corporate' => 'pages#corporate'
  get 'residential' => 'pages#residential'
  get 'index' => 'pages#index'
  get 'admin_root' => 'elevators#index'
  get 'googledcf02c3ead535472.html' => 'pages#googledcf02c3ead535472.html'
  get '/building' => 'buildings#buildingselect'
  get '/battery' => 'batteries#batteryselect'
  get '/column' => 'columns#columnselect'
  get '/elevator' => 'elevators#elevatorselect'
 

  # POST routes

  post 'quote/create' => 'quotes#create'
  post 'contact/create' => 'leads#create'

  resources :dashboard do
    get 'speak', :on => :collection
  end
  
end

