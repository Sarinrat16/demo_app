DemoApp::Application.routes.draw do

  # get "users/new" 
  resources :users

  match 'signup' , to: 'users#new' #sign-up parth
  # The priority is based upon order of creation:
  # first created -> highest priority.
end
