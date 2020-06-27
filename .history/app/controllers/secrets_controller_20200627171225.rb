class SecretsController < ApplicationController
  before_action :require_login
  def show
    # if session[:name]== nil || session[:name].empty?
    #   redirect_to '/login'
    # end
  end

  private 
  def require_login
    return redirect_to '/login' unless session.include? :name
  end
  
end
