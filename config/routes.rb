Rails.application.routes.draw do

  # list all tasks
  get '/tasks', to: 'pages#index'

  # create a task
  get '/tasks/new', to: 'pages#new', as: 'update'
  post '/tasks', to: 'pages#create'

  # show a specific task
  get '/tasks/:id', to: 'pages#show', as: 'task'

  # update an existing task
  #goes to an existing 'edit' method in controller
  get '/tasks/:id/edit', to: 'pages#edit', as: 'edit'
  # put'/tasks/:id', to: 'pages#update', as: 'task_path'
  patch '/tasks/:id', to: 'pages#update'

  # remove a task
  delete '/tasks/:id', to: 'pages#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
