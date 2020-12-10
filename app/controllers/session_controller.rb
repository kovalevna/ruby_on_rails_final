class SessionController < ApplicationController
  skip_before_action :require_login, only: [:login, :create]

  def login; end

  def create
    user = User.find_by username: params[:username]

    if user&.authenticate(params[:password])
      p 'GJ, GOING TO HELL (CALCULATIONS...)'
      sign_in user
      redirect_to root_url
      #redirect_to "https://www.youtube.com/watch?v=7KGnjcy3oAM&ab_channel=LiLinnna"
    else
      p 'ERROR, REDIRECTING TO LOGIN PAGE'
      redirect_to login_url
    end
  end

  def logout
    sign_out
    redirect_to login_url
  end
end
