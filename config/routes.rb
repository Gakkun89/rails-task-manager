Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read
  get "/tasks", to: "tasks#index", as: :tasks
  # need this new higher than :id otherwise error
  get "/tasks/new", to: "tasks#new", as: :new_task
  # see above
  get "tasks/:id/check", to: "tasks#check", as: :check_task
  get "/tasks/:id", to: "tasks#show", as: :task
  # create
  post "/tasks", to: "tasks#create"
  # update
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "/tasks/:id", to: "tasks#update"
  # destroy
  delete "/tasks/:id", to: "tasks#destroy"
end
