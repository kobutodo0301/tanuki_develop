Rails.application.routes.draw do
  resources :tanuki_sad_words
  root 'tanuki_pages#home'
  get 'tanuki_pages/home'
  
  get 'tanuki_pages/taanukiGladWords'
  get 'tanuki_pages/taanukiRecentlyWords'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
