class SecretsController < ApplicationController
  def show
    if params[:name]== nil || params[:name].empty?
      redirect_to 'sessions/login'
    end
  end
end
