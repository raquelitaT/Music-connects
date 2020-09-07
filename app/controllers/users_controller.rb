class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def account
    @user = current_user 
    @host_user_requests = Request.where(jam_session_id: current_user.jam_sessions)
  end
end
