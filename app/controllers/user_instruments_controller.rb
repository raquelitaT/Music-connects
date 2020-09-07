class UserInstrumentsController < ApplicationController
   # def index
    # @jam_session_instruments = JamSessionInstrument.all
  # end

  def new
    @user_instrument = UserInstrument.new
  end
end
