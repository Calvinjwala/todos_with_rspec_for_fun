TodosWithRspecForFun::Application.routes.draw do
  get "home/index"
  post "todos/create", as: :todos
  
  root 'home#index'
end