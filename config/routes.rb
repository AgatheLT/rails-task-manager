Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # see all the tasks
  get '/tasks', to: 'tasks#index'
  # see details about one task
  get '/tasks/:id', to: 'task#show', as: :task
  # create a new task - display the list and then post the new task in the #create
  post '/tasks', to: 'task#create'

  # edit a task
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch 'rtasks/:id', to: 'tasks#update'
  # remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
