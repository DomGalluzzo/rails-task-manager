Rails.application.routes.draw do
  # * List tasks
  get 'tasks', to: 'tasks#index'

  # * Display new task form
  get 'tasks/new', to: 'tasks#new'

  # * View details of a task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # * Handle POST request generated on form submission
  post 'tasks', to: 'tasks#create'

end
