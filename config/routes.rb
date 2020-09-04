Rails.application.routes.draw do
  get    'virtual_machines', to: 'virtual_machine#index'
  get    'virtual_machines/new', to: 'virtual_machine#new'
  get    'virtual_machines/:id', to: 'virtual_machine#show'
  post   'virtual_machines', to: 'virtual_machine#create'
  get    'virtual_machines/:id/edit', to: 'virtual_machine#edit'
  patch  'virtual_machines/:id', to: 'virtual_machine#update'
  delete 'virtual_machines/:id', to: 'virtual_machine#destroy'
end
