class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      console.log("i pass user test")
      redirect_to "/"
    else
      console.log("need to sign in again")
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end
end
