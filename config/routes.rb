Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create]

  # the form will need to know which record is being edited, this will need to be a dynamic route that accepts an `:id` as a parameter that the controller can access
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

  # This second route will also need to be dynamic, accepting the same `:id` as a parameter so that the action will know which record is being altered
  patch 'articles/:id', to: 'articles#update'

  # we're sending data to the server, so we know it's not `GET`, and since we're not creating a new record it shouldn't be `POST`. That's right- `PATCH` should be the
end
