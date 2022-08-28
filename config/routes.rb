Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :personas
  resources :egresos
  resources :ingresos
  resources :categoriaegresos
  resources :categoriaingresos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
