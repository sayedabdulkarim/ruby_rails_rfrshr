Rails.application.routes.draw do
  devise_for :users

  resources :employees, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :documents
  root 'home#index' # this 'root' sets the / URL

  get "pages/about_us", as: "about"
  get "pages/contact_us", as: "contact"
  get "pages/privacy_policy", as: "privacy"
  get "/pages/terms_and_conditions", as: "terms"


  ## The following are examples of how to set up routes for the home page.
  # get 'home/index'
  # get '/home' => 'home#index'

  # get 'home', to: 'home#index'


end
