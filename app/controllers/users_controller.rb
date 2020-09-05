class UsersController < ApplicationController
  def show
    @host_user_requests = Request.where(jam_session_id: current_user.jam_sessions)
    # @user = User.find(params[:id])
  end

end
