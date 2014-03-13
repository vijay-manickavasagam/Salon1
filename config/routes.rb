Salon1::Application.routes.draw do

resources :salons do
 resources :comments
end

resources :users
resources :sessions, only: [:new, :create, :destroy]


# get "/clients" => 'clients#new'
# get "/clients/create" => 'clients#create'
# get "/clients/show" => 'clients#show'

resources :clients


root 'welcome#index'

end


