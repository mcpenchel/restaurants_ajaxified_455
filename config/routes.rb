Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :show, :destroy] do
    resources :reviews, only: :create
    # POST restaurants/1/reviews # => params[:restaurant_id]
    # POST restaurants/34/reviews # => params[:restaurant_id]
  end

  # ROTAS!!!
  # Member -> Precisa de um id!! Ex: show, edit, update, destroy
  # Collection -> Não precisa de id, pq eh sobre todos!!
  # Ex: index, new, create

end
