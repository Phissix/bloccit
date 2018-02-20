Rails.application.routes.draw do
  get 'questions/index'

  get 'questions/show'

  get 'questions/new'

  get 'questions/edit'

  # #1
  resources :questions

  resources :posts

  get 'about' => 'welcome#about'


  root 'welcome#index'
end
