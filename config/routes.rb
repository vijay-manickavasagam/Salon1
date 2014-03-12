Salon1::Application.routes.draw do

resources :salons do
  resources :comments
end

resources :users
resources :sessions

resources :clients
# How to route any path a product ID on it. For Example:  get "/users/:user_id/show" => 'users#show'

  root 'welcome#index'

end


