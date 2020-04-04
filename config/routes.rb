Rails.application.routes.draw do
  root 'home#index'

  resources :medical_records, only: [:index, :new, :create, :destroy]
  resources :pets, only: [:new, :create] do
    get :medical_records, on: :collection
  end

  namespace :api do
    namespace :v1 do
      resources :pets, only: [:index]
    end
  end
end
