class SecretsController < ApplicationController
  def show
    if current_user
      
    else
      redirect_to '/login'
    end
  end
end
