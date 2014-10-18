Rails.application.routes.draw do
  match ':verb/:entity(/:other_entity)', to: 'game#handle', via: [ :get, :post ]
end
