Rails.application.routes.draw do
  root 'home#index'
  get "/" => "home#index"
  post "/create" => "home#create"
  get "/new" => "home#new"
  post "/change" => "home#change_list"
  post "/update" => "home#update"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
