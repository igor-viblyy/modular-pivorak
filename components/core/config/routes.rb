Pivorak::Core::Engine.routes.draw do
  root to: "home#index"

  devise_for :users, class_name: "Pivorak::User", module: :devise
end
