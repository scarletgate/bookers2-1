Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get 'home/about', to: 'homes#about'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
   resource :favorites, only: [:create, :destroy]
 end
  resources :users, only: [:index, :show, :edit, :update, :destroy]
end
