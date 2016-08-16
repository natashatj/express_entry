Rails.application.routes.draw do

  get 'assessments/index'

  root 'assessments#index'

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  resources :assessments, only: [:new, :create] do
    resources :candidates
  end

end
