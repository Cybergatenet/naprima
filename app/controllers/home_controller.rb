class HomeController < ApplicationController
  def set_session
    session[:username] = "Tessy"
    flash[:notice] = "Session has been created = #{session[:username]}"

    # redirect_to root_path
  end

  def index
    if session
      flash[:notice] = session[:username]
    end
  end

  def clear_session
    reset_session
    flash[:notice] = "Session Cleared!"

    redirect_to home_about_path
  end

  def about
  end
end
