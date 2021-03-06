class SessionsController < ApplicationController
    session[:user_id] = @user.id

    def create
      render 'new'
    end

    def logout
      session[:user_id] = nil
      flash[:notice] = "You have successfully logged out."
      redirect_to users_url
    end
end
