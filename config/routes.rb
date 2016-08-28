Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  to:'fakes#home'
  get '/home',to: 'fakes#home'
  get 'fakes/index'
  get 'fakes/about',to: 'fakes#about', as:'about'
  get 'fakes/:id', to: 'fakes#create',as: 'fake_gen'
  get '/fakes', to: 'fakes#home'
end
