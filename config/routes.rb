Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :new

  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create'
  # edit and update routes
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'task/:id', to: 'tasks#update', as: :update
  # delete tasks
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end
