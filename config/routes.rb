Rails.application.routes.draw do

  get 'language_tests/test_evaluation'

  get 'edu_levels/index'

  get 'personal_page/home'

  # get 'sessions/create'

  # get 'users/new'

  # get 'users/create'
  get 'immigration/home'

  get 'language/test_evaluation/:id', to: 'language_tests#test_evaluation'




   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :assessments
  resources :candidates
  resources :edu_levels
  resources :language_tests
  # resources :immigration do
  #   resources :language_test_dropdown 
  # end

end
