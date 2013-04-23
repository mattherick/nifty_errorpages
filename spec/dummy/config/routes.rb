Rails.application.routes.draw do
  mount NiftyErrorpages::Engine => "/nifty_errorpages"
  
  resources :articles do
    get :simulate_500, to: "articles#simulate_500", on: :collection
    get :simulate_422, to: "articles#simulate_422", on: :collection
  end

end