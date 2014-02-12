Sochi::Application.routes.draw do
  resources :athletes
  root to: 'athletes#index'
end
