class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # THIS IS FOR THE CREATE ACCOUNT AND UPDATE USER ACCOUNT METHODS FOR DEVISE
  # IT ALLOWS THE NEW FIELD (NAME) TO BE INCLUDED IN THE CREATION OR UPDATING ON A USER RECORD


