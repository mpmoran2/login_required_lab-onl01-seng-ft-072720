class SessionsController < ApplicationController

    def new
        if current_user
            redirect_to homepage_path
        end
    end

    def create
        if params[:name].nil? || params[:name].empty?
          redirect_to root_path
        else
          session[:name] = params[:name]
          redirect_to homepage_path
        end
    end

    def homepage
        current_user
    end

    def destroy
        session.delete :name
        redirect_to root_path
    end
    
end