# == Route Map
#
#                         Prefix Verb URI Pattern                                                                              Controller#Action
#                           root GET  /                                                                                        homepage#index
# api_v1_movie_reservation_index GET  /api/v1/movies/:movie_id/reservation(.:format)                                           api/v1/reservation#index
#                                POST /api/v1/movies/:movie_id/reservation(.:format)                                           api/v1/reservation#create
#                  api_v1_movies GET  /api/v1/movies(.:format)                                                                 api/v1/movies#index
#                                POST /api/v1/movies(.:format)                                                                 api/v1/movies#create
#             rails_service_blob GET  /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#      rails_blob_representation GET  /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#             rails_disk_service GET  /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#      update_rails_disk_service PUT  /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#           rails_direct_uploads POST /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
#

Rails.application.routes.draw do
  root 'homepage#index'

  namespace :api do
    namespace :v1 do
      resources :movies, only: [:index, :create] do
        resources :reservation, only: [:create, :index]
      end
    end
  end
  get '/api/v1/reservations', to: 'api/v1/reservation#get_all'
end
