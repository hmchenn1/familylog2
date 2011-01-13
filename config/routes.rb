Familylog2::Application.routes.draw do
  resources :parents do
    resources :kids
  end
  root :to => "home#index"
end
