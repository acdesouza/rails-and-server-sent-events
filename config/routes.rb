RailsAndServerSentEvents::Application.routes.draw do
  resources :users

  get 'user_stream' => 'users#index_stream'
  get 'user_watch' => 'users#watch'
  root to: 'users#watch'
end
