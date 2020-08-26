Rails.application.routes.draw do
  get '/index', to: 'virtual_machine#index'
  get '/new', to: 'virtual_machine#new'
  post '/create', to: 'virtual_machine#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
