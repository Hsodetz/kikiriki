Rails.application.routes.draw do

  devise_for :users
  root to: "alumnos#index"

  resources :observacions
  resources :colegios
  resources :profesors
  resources :denuncia
  resources :eventos
  resources :autorizacions
  resources :asistencia
  resources :materia
  resources :padres
  resources :alumnos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
