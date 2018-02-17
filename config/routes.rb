Rails.application.routes.draw do

  resources :advertisements
  # #1
  resources :posts

  get 'about' => 'welcome#about'


  root to: "welcome#index"
end
