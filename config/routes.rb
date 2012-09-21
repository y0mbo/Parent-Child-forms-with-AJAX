Parentchild::Application.routes.draw do
  resources :parents do
    resources :children
  end

  root :to => 'parents#index'
end
