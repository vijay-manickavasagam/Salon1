Salon1::Application.routes.draw do

resources :salons do
  resources :comments
end

resources :users
resources :sessions
resources :clients

  root 'welcome#index'

end


