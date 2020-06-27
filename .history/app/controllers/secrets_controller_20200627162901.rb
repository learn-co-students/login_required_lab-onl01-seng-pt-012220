class SecretsController < ApplicationController
  def show
    if params[:name]== nil || params[:name].empty?
      redirect_to '/login'
    else
      render '/show'
    end
  end
end
