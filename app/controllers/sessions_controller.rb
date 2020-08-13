class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil
      redirect_to login_path
    elsif params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secret_path
    end
  end

  def destroy
    session.destroy 
  end

end