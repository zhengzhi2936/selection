Rails.application.routes.draw do
  devise_for :users

  namespace :api, :defaults => { :format => :json} do
    namespace :v1 do
       get "/teachers"  => "teachers#index", :as => :teachers
       get "/students/:id" => "students#show", :as => :student
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
