class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to user's show page
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy

  end
end
