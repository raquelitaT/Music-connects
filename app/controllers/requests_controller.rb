class RequestsController < ApplicationController

  def index
    @jamsession = JamSession.find(params[:jam_session_id])
    @requests = Request.all
  end

  def new
    @jamsession = JamSession.find(params[:jam_session_id])
    @request = Request.new
  end

  # def create
  #   @jamsession = JamSession.find(params[:jam_session_id])
  #   @request = Request.new(strong_params)
  #   @request.user_id = current_user.id
  # end

   #   def accept
    #     @jamsession = Jamsession.find(params[:id])
    #     @jamsession.status = "Accept"
    #     @jamsession.save
    #     redirect_to users_path
    #   end

    #   def decline
    #     @jamsession = Jamsession.find(params[:id])
    #     @jamsession.status = "Declined"
    #     @jamsession.save
    #     redirect_to users_path
    #   end

  private
    def strong_params
      params.require(:requests).permit(:status)
    end
end
