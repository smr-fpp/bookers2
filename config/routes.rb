Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about', as: "about"
  get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  get 'users/:id' => 'users#show', as: 'user_show'
  
  
  resources :users, only:[:show, :update, :index, :edit]
  resources :books, only:[:create, :index, :show, :edit, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
