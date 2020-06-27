class SecretsController < ApplicationController
  def show
    if params[:name]== nil || params[:name].empty?
      redirect_to '/login'
    end
  end
end
