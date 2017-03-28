Rails.application.routes.draw do
  devise_for :users

  namespace :api, :defaults => { :format => :json} do
    namespace :v1 do
       get "/teachers"  => "teachers#index", :as => :teachers
       get "/teachers/:id"  => "teachers#show", :as => :teacher
       get "/students/:id" => "students#show", :as => :student
       delete "/teachers/:id" => "teachers#destroy", :as => :destroy_teacher
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
