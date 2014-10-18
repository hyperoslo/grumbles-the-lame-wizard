Rails.application.routes.draw do
  root to: 'game#index'

  match ':verb/:entity(/:other_entity)', to: 'game#handle', via: :post
end
