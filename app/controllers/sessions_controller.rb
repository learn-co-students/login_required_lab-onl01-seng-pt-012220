class SessionsController < ApplicationController
    def welcome
        redirect_to controller: 'sessions', action: 'new' unless session.include? :name
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
    end
end