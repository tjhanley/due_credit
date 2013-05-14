Rails.application.routes.draw do
  get "due-credit/:token" => "due_credit/credit#click_through" , :as => :due_credit
end