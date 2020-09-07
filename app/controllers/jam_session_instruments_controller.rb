class JamSessionInstrumentsController < ApplicationController
   # def index
    # @jam_session_instruments = JamSessionInstrument.all
  # end

  def new
    @jam_session_instrument = JamSessionInstrument.new
    @jamsession = JamSession.new
  end

  # def create
  #   @jam_session_instrument = JamSessionInstrument.new
  #   @jam_session_instrument.user_id = current_user.id
  #   if @jam_session_instrument.save
  #     redirect_to jamsession_path(@jamsession)
  #   else
  #     render :new
  #   end
    # @jam_session_instrument.save
  # end

  # def edit
  #   @userinstrument = UserInstrument.find(params[:id])
  # end

  # def update
  #   @userinstrument = UserInstrument.find(params[:id])
  #   @jamsession.update(strong_params)
    # redirect_to users_path
  # end

  # private

  # def strong_params
    # params.require(:userinstrument).permit(:skill_level)
  # end
end
