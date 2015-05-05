Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  get 'persons/profile'
  get 'admin/users_count'
  resources :items do
      get :upvote, on: :member
      get :exspensive,  on: :collection
    
  end
  get 'persons/profile', as: 'user_root'
  get  "/sign_out", :to => "devise/sessions#destroy "
end
