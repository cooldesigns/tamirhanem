Rails.application.routes.draw do
  get '/' => 'main#home'
  get '/search' => 'main#home'
  post '/search' => 'main#search'

  resources :tamirhanes, :path => '', :controller => "main"

  post '/:id/kayit_ekle' => 'main#kayit_ekle', as: "kayit_ekle"
  post '/:id/kayit_olustur' => 'main#kayit_olustur', as: "kayit_olustur"
end
