Rails.application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons', {:via => :post, :to => 'lessons#create'})
  match('lessons/new',{:via => :get, :to => 'lessons#new'})
  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
  match('lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'})

  match('sections', {:via => :get, :to => 'sections#index'})
  match('sections', {:via => :post, :to => 'sections#create'})
  match('sections/new', {:via => :get, :to => 'sections#new'})
  match('sections/:id', {:via => :get, :to => 'sections#show'})
  match('sections/:id/edit', {:via => :get, :to => 'sections#edit'})
  match('sections/:id', {:via => [:patch, :put], :to => 'sections#update'})

end
