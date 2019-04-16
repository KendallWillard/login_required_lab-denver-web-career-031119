class SessionsController < ApplicationController

  def new
  end

  def create
    byebug
    session[:username] = params[:username]
    if session[:name].nil? || session[:name] == ''
      redirect_to new_session_path
    else
        redirect_to sessions_path
    end
  end

  def destroy
    session.delete :username
    redirect_to '/'
  end
end
