Rails.application.routes.draw do
  get '/index', to: 'virtual_machine#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
