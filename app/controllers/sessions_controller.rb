class SessionsController < ApplicationController
    def new
    end
  
    def create
      session[:name] = params[:name]
      if current_user
        redirect_to '/login'
      else
        redirect_to '/login'
      end
    end
  
    def destroy
      session.delete :name
    end
end