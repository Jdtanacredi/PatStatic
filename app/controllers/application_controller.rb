require 'mailchimp'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :setup_mcapi

	def setup_mcapi
	  @mc = Mailchimp::API.new(ENV['MAILCHIMP_KEY'])
	  @list_id = ENV['MAILCHIMP_LIST']
	end

end
