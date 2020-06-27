class SessionsController < ApplicationController
  def new
  end
  def create
    
  end
  def destroy

  end
  private
  def require_login
    return head(:forbidden) unless session.include? :name
  end 
end
