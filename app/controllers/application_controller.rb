class ApplicationController < ActionController::Base
  extend Lettable
  # before_action :authenticate_user!
  protect_from_forgery with: :exception
end
