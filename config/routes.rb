Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get 'todos/list'
  get 'todos/:id/complete', to: 'todos#complete', as: 'todocomplete'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'todoedit'
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy', as: 'tododelete'



  #patch  'todos/:id', to 'todos#update', as: 'todoupdate'


  root 'todos#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
