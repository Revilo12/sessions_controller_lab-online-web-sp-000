class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil?
      session.clear
      redirect_to '/login'
    end
  end
end