Rails.application.routes.draw do
  resources :portfolios
  
  get 'about-me', to: 'pages#about'
  get 'contact-me-na-ja', to: 'pages#contact'
  resources :blogs

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
