Rails.application.routes.draw do
  devise_for :users
  #root "diaries#index"
  resources :diaries

  resources :diaries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "diaries#index"
  resources :diaries

end
