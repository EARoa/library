Rails.application.routes.draw do

  root "library#list"
  get "checkout" => "library#new_checkout"
  post "checkout" => "library#checkout"

  get "checkin" => "library#new_checkin"
  post "checkin" => "library#checkin"
end
