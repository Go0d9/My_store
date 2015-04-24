Rails.application.routes.draw do
  root "items#index"
  devise_for :users
  get 'persons/profile'

  resources :items do
      get :upvote, on: :member
      get :exspensive,  on: :collection
    
  end
  get 'persons/profile', as: 'user_root'
  get  "/sign_out", :to => "devise/sessions#destroy "
end
