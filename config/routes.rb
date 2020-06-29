Rails.application.routes.draw do
  resources :portfolios, except: %i[show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  root to: 'pages#home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'pages/contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
