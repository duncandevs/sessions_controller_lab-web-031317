class SessionsController < ApplicationController
  #two pages home
  def new
    #will render a new form
  end
  def create
    #will create a new session if username is present and redirect to the index pages
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      #if username is not present will return to the login page
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
