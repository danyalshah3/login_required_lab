class SecretsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:show]


    def new

    end

    def index

   end

    def show
        
         if !!current_user
            redirect_to 'sessions#new'

         else
            render 'show'
         end
        
        

    end
    

    private

    def require_login
    
        redirect_to '/login' unless session.include? :name

    end
end
