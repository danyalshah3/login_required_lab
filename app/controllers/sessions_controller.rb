class SessionsController < ApplicationController


    def home

    end

    def new

    end

    def create

        if params[:name].present?
            session[:name] = params[:name]
            redirect_to '/home'
    
        else
            redirect_to '/login'
        end
    end

    def destroy
        session[:name] = nil
        redirect_to '/login'
        
    end
end
