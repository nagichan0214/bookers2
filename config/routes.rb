Rails.application.routes.draw do
 devise_for :users
 root to: 'homes#top'
 get 'homes/about' => 'homes#about'
 resources :books,only: [:show, :edit, :index, :create, :new]
 resources :users, only: [:show, :edit, :index]


  #get 'homes/top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
