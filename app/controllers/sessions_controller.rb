class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]
  def new
  end

  def create
    if !!params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
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
