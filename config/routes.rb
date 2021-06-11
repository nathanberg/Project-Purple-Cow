Rails.application.routes.draw do
  root to: 'counters#index'
  get '/counters/', to: 'counters#index'
  get '/counters/get_count', to: 'counters#get_count'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
