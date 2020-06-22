Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/books", to: "books#index", as: "books" #show all books
  post "/books", to: "books#create" #create a new books
  get "/books/new", to: "books#new", as: "new_book" #get a form
  get "/books/:id", to: "books#show", as: "book" #show a single book
  patch "/books/:id", to: "books#update"
  put "/books/:id", to: "books#update"
  get "books/:id/edit", to: "books#edit", as: "edit_book" #get a form
  
  
end
