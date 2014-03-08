Salon1::Application.routes.draw do

resources :salons do
  resources :comments
end


  root 'welcome#index'


end


