Rails.application.routes.draw do

  post 'personal_page/submit'
  
  get 'edu_levels/index'

  get 'personal_page/home'


  # get 'sessions/create'

  # get 'users/new'

  # get 'users/create'
  get 'immigration/home'


   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :assessments
  resources :candidates
  resources :edu_levels

end
