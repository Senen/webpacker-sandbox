Rails.application.routes.draw do
  resources :list_items

  namespace :stimulus do
    resources :list_items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#home"
  get '/stimulus',  to: "pages#stimulus", as: :stimulus
  get '/vue',  to: "pages#vue", as: :vue
end
