class SessionsController < ApplicationController
    def welcome
        require_login
        @user = current_user
    end
    
    def new
    end

    def create
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
            redirect_to '/'
        else
            redirect_to action: "new"
        end
    end

    def destroy
        session.delete :name
        redirect_to action: "new"
    end
end