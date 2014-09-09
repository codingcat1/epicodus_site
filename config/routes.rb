Rails.application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
end
