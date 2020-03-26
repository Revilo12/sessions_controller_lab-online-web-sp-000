class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    if params[:name].nil?
      redirect_to controller: 'sessions', action: 'new'
    end
  end
end
