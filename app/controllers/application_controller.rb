class ApplicationController < ActionController::Base
# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.
protect_from_forgery with: :exception

before_action :configure_permitted_parameters, if: :devise_controller?

include ActionController::MimeResponds
include ActionController::ImplicitRender

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :username
  devise_parameter_sanitizer.for(:sign_up) << :high_school
  devise_parameter_sanitizer.for(:sign_up) << :image
  devise_parameter_sanitizer.for(:sign_up) << :GPA
  devise_parameter_sanitizer.for(:sign_up) << :SAT
  devise_parameter_sanitizer.for(:sign_up) << :ACT
  devise_parameter_sanitizer.for(:sign_up) << :Extras
  devise_parameter_sanitizer.for(:sign_up) << :region
  devise_parameter_sanitizer.for(:sign_up) << :school_size
  devise_parameter_sanitizer.for(:sign_up) << :rank


  devise_parameter_sanitizer.for(:account_update) << :high_school
  devise_parameter_sanitizer.for(:account_update) << :image
  devise_parameter_sanitizer.for(:account_update) << :GPA
  devise_parameter_sanitizer.for(:account_update) << :SAT
  devise_parameter_sanitizer.for(:account_update) << :ACT
  devise_parameter_sanitizer.for(:account_update) << :Extras
  devise_parameter_sanitizer.for(:account_update) << :region
  devise_parameter_sanitizer.for(:account_update) << :school_size
  devise_parameter_sanitizer.for(:account_update) << :rank

end

  #@school_search = gets.chomp

  #@school = School.find(:name => "@school_search")

end
