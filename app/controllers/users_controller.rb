class UsersController < ApplicationController
  def show
    @host_user_requests = Request.where(jam_session_id: current_user.jam_sessions)
  end
end
