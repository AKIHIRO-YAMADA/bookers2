Rails.application.routes.draw do
  #get 'books/edit'
  #get 'users/show'
  #get 'users/edit'
  get 'home/about' => 'home#about'
root 'home#top'
  devise_for :users
  resources :users, only: [:show, :edit, :index, :update]
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy,:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end