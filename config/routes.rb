map.resource :faq, :controller => "faq"

map.namespace :admin do |admin|
  admin.resources :questions
end  
