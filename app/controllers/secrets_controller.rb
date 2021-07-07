class SecretsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:index]


    def new

    end

    def index

   end

    def show
        
         @secret = Secret.find(params[:id])
         redirect_to '/login'
        

    end
    

    private

    def require_login
    
        return head(:forbidden) unless session.include? :user_id 

    end
end
