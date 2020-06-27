class SecretsController < ApplicationController
  def show
    if params[:name]== nil || params[:name].empty?
      redirect 'sessions/login'
    end
  end
end
