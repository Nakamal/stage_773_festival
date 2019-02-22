Rails.application.routes.draw do
  namespace :api do 
    get "/donations" => "donations#index"
    post "/donations" => "donations#create"
    get "/donations/:id" => "donations#show"
    patch "/donations/:id" => "donations#update"
    delete "/donations/:id" => "donations#destroy"

    get "/events" => "events#index"
    post "/events" => "events#create"
    get "/events/:id" => "events#show"
    patch "/events/:id" => "events#update"
    delete "/events/:id" => "events#destroy"

    get "/festival_applications" => "festival_applications#index"
    post "/festival_applications" => "festival_applications#create"
    get "/festival_applications/:id" => "festival_applications#show"
    patch "/festival_applications/:id" => "festival_applications#update"
    delete "/festival_applications/:id" => "festival_applications#destroy"

    get "/festivals" => "festivals#index"
    post "/festivals" => "festivals#create"
    get "/festivals/:id" => "festivals#show"
    patch "/festivals/:id" => "festivals#update"
    delete "/festivals/:id" => "festivals#destroy"

    get "/people" => "people#index"
    post "/people" => "people#create"
    get "/people/:id" => "people#show"
    patch "/people/:id" => "people#update"
    delete "/people/:id" => "people#destroy"

    get "/performers" => "performers#index"
    post "/performers" => "performers#create"
    get "/performers/:id" => "performers#show"
    patch "/performers/:id" => "performers#update"
    delete "/performers/:id" => "performers#destroy"

    get "/schedule_slots" => "schedule_slots#index"
    post "/schedule_slots" => "schedule_slots#create"
    get "/schedule_slots/:id" => "schedule_slots#show"
    patch "/schedule_slots/:id" => "schedule_slots#update"
    delete "/schedule_slots/:id" => "schedule_slots#destroy"

    get "/sponser_applications" => "sponser_applications#index"
    post "/sponser_applications" => "sponser_applications#create"
    get "/sponser_applications/:id" => "sponser_applications#show"
    patch "/sponser_applications/:id" => "sponser_applications#update"
    delete "/sponser_applications/:id" => "sponser_applications#destroy"

    get "/sponsers" => "sponsers#index"
    post "/sponsers" => "sponsers#create"
    get "/sponsers/:id" => "sponsers#show"
    patch "/sponsers/:id" => "sponsers#update"
    delete "/sponsers/:id" => "sponsers#destroy"
  end
end
