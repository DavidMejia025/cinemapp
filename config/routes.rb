Rails.application.routes.draw do
  root 'homepage#index'
  get '/*path' => 'homepage#index'

  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index, :create] do
        resources :reservation, only: :create
      end
    end
  end
end
