Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # create

  get 'tasks/new', to: 'tasks#new'

  post 'tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # read
  get 'tasks', to: 'tasks#index'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
end
