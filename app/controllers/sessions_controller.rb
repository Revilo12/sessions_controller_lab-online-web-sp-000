class SessionsController < ApplicationController
  def new
  end

  def create
    if logged_in?
      redirect_to "/"
    else
      if params[:name].nil? || params[:name] == ""
        redirect_to controller: 'sessions', action: 'new'
      else
        session[:name] = params[:name]
      end
    end
  end
end
