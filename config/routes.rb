Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index', as: :cocktails
  get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  post '/', to: 'cocktails#create'
  get 'cocktails/edit', to: 'cocktails#edit', as: :edit_cocktail
  patch 'cocktails/:id', to: 'cocktails#update'
  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  get 'cocktails/:id/doses/new', to: 'doses#new', as: :new_dose
  post 'cocktails/:id/doses', to: 'doses#create', as: :doses
  delete 'cocktails/:id/doses/:id', to: 'cocktails#destroy_dose', as: :destroy_dose
  delete 'cocktails/:id', to: 'cocktails#destroy_cocktail', as: :destroy_cocktail
end
