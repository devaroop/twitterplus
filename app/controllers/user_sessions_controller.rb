class UserSessionsController < ApplicationController

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    respond_to do |format|
      if @user_session.save
        format.html { redirect_to root_url, notice: 'You are logged in.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    @user_session = current_user_session
    @user_session.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: " You Logged out successfully." }
    end
  end
end
