Rails.application.routes.draw do

  namespace :api do
    get "/charities" => "charities#index"
  end
end
