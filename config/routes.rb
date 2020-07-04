Rails.application.routes.draw do
  resources :comments
  resources :choices
  resources :question_answers
  resources :biomes
  resources :plants
  resources :animals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
