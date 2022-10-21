Rails.application.routes.draw do
  resources :monsters
  resources :tweets, exlude: [:edit, :update, :destroy]
  root "tweets#index"
  resolve("new_tweet_path") {route_for(:new)}
  resolve("new_monster_path") {route_for(:new)}
end
