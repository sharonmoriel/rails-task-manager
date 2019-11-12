Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # Read all tasks
  get 'tasks', to: 'tasks#index'
  # Read the details of a single task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Create a new task (2 steps: get the form + post the params)
  get 'new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # Update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end

# resources :tasks
