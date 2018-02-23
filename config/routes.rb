Rails.application.routes.draw do
  devise_for :users
  root to: 'cloths#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookings, only:[:index, :show]

  namespace :admin do
    resources :cloths, only: [:index]
  end

  resources :cloths, only: [ :index, :new, :create, :show ] do
    resources :bookings, only:[:create]
  end

end
