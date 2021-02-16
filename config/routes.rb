Rails.application.routes.draw do
  # # * List tasks
  # get 'tasks', to: 'tasks#index'

  # # * Handle POST request generated on form submission
  # post 'tasks', to: 'tasks#create'

  # # * New task form
  # get 'tasks/new', to: 'tasks#new', as: :new_task
  
  # # * Edit a single task
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # # * Show a single task
  # get 'tasks/:id', to: 'tasks#show', as: :task

  # # * Update specified task
  # patch 'tasks/:id', to: 'tasks#update'

  # # * Remove task
  # delete 'tasks/:id', to: 'tasks#destroy'
  
  resources :tasks
end
