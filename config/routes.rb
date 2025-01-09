Rails.application.routes.draw do
  resources :file_uploads
  root to: "file_uploads#index"
  devise_for :users,
             path: "",
             path_names: { sign_in: "login", sign_out: "logout", edit: "profile", sign_up: "registration" }
end
