Rails.application.routes.draw do

  # post 'personal_page/submit'
  
  get 'edu_levels/index'

  # get 'personal_page/home'


  # get 'sessions/create'

  # get 'users/new'

  # get 'users/create'
  get 'immigration/home'

  get 'assessments/index'

  root 'assessments#index'

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  # resources :assessments, only: [:new, :create]
  # resources :candidates
  # resources :edu_levels

  resources :assessments, only: [:new, :create] do
    resources :candidates
  end

end
