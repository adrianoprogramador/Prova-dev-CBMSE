Rails.application.routes.draw do
  root to: 'inicio#index'
  
  resources :pessoas
  resources :tipo_contatos
  resources :contato_pessoas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
