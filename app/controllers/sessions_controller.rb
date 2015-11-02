class SessionsController < ApplicationController

def create
   user = User.authenticate(params[:session][:email], params[:session][:password])
  if user
    sign_in user
    redirect_to user
  else
    flash.now[:error] = "Invalid Email/Password combo"
    render :new
  end
end

def destroy
  sign_out
  redirect_to new_session_path
end
end
