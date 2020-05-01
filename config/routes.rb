Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :prayers, except: [:edit, :update] do
    resources :comments, only: [:new, :create]
  end
  resources :comments, only: :destroy
end
