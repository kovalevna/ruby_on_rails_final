# frozen_string_literal: true

class SessionController < ApplicationController
  skip_before_action :require_login, only: %i[login create]

  def login; end

  def create
    user = User.find_by username: params[:username]

    if user&.authenticate(params[:password])
      sign_in user
      redirect_to root_url
    else
      redirect_to login_url
    end
  end

  def logout
    sign_out
    redirect_to login_url
  end
end
