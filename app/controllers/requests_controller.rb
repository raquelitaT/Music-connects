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
    @jamsession = JamSession.find(params[:jamsession_id])
    @request = Request.new(strong_params)
    @request.user = current_user
    @request.jam_session_id = @jamsession.id
    if @request.save!
      redirect_to jamsession_path(@jamsession, anchor: "request-#{@request.id}")
    else
      render "jamsessions/show"
    end
  end

  def destroy
    @jamsession = JamSession.find(params[:jamsession_id])
    # @request.user_id = current_user.id
    @request.destroy
  end

  def accept
    @request = Request.find(params[:id])
    @request.status = "Accepted"
    @request.save
    RequestMailer.accepted_request(@request).deliver_now
    redirect_to account_path
  end

  def decline
    @request = Request.find(params[:id])
    @request.status = "Declined"
    @request.save
    RequestMailer.declined_request(@request).deliver_now
    redirect_to account_path
  end



  private

  def strong_params
    params.require(:request).permit(:status)
  end
end
