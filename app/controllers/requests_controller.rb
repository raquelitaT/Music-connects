class RequestsController < ApplicationController

  def index
    @jamsession = JamSession.find(params[:jamsession_id])
    @requests = Request.all
  end

  def new
    @jamsession = JamSession.find(params[:jamsession_id])
    @request = Request.new
  end

  def create
    @jamsession = JamSession.find(params[:jam_session_id])
    @request = Request.new(strong_params)
    @request.user_id = current_user.id
    @request.jamsession = @jamsession
    if @request.save
      redirect_to root_path
    else
      render :new
    end
    @request.save
  end

  def destroy
    @jamsession = JamSession.find(params[:jamsession_id])
    # @request.user_id = current_user.id
    @request.destroy
  end

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
