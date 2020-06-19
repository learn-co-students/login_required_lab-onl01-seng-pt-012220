class SecretsController < ApplicationController
  before_action :require_login
  def show
    @secret = "This is the secret."
  end

end
