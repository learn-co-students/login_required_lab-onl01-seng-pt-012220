class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new]
  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      byebug
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end

  private
  def require_login
    return redirect_to '/login' unless session.include? :name
  end
   
end
