class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #config.web_console.whitelisted_ips = '192.168.199.180'
  #config.web_console.whiny_requests = false
  protect_from_forgery with: :exception
end
