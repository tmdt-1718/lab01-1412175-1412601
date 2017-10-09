class SessionController < ApplicationController

  def new

  end

  def create
    begin
      user = User.authenticate!(session_params)
      login(user)
      flash[:success] = "Login successfully. "
      redirect_to root_path
    rescue ActiveRecord::RecordNotFound => e
      flash[:error] = "Wrong email or password."
      render :new
    end
  end

  def destroy
    logout
    flash[:success] = "Logout successfully."
    redirect_to login_path
  end

  private
  def session_params
    params.require(:session).permit(:email, :password)
  end

end
