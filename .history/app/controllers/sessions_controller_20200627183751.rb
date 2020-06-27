class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new]
  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
  end

  private
  def require_login
    return redirect_to '/login' unless session.include? :name
  end
   
end
