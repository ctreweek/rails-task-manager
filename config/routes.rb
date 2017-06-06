Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to:'tasks#new'

  get 'tasks/:id', to:'tasks#show'

  post 'tasks', to: 'tasks#create'

  get 'tasks/edit/:id', to: 'tasks#edit'

  patch 'tasks/update/:id', to: 'tasks#update'

  delete 'tasks/destroy/:id', to: 'tasks#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
