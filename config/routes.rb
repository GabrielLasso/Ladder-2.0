Rails.application.routes.draw do
  resources :partidas
  devise_for :users 
  root "mainpage#index"
  delete "/mains" => "mains#delete_main", :as => 'delete_main'
  get "/mains" => "mains#index", as: 'mains' 
  post "/mains" => "mains#add_main", as: 'add_main'
  get "/usuarios" => "users#list_users", as: 'listar_usuarios'
  post "/usuario/add" => "users#add_admin", as: 'add_admin'
  post "/usuario/remove" => "users#remove_admin", as: 'remove_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
