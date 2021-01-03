Rails.application.routes.draw do
  root to: "messages#index"
  post :send_email, to: "messages#send_email"
end
