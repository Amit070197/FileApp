Rails.application.routes.draw do
  resources :file_uploads
  devise_for :users
end
