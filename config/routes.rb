Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :photos do
    resources :comments

    resource :like
  end
  
  resources :users do
    resource :follow
    resources :followings
    resources :followers

    resources :likes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
