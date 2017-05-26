Rails.application.routes.draw do
  root to: 'quizzes#index'
  get 'quiz/1', to: 'quizzes#quiz_1'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
