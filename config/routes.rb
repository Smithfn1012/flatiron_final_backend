Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals do
    resources :comments
  end
  resources :plants do
    resources :comments
  end
  resources :biomes
  resources :question_answers
  resources :comments
end


