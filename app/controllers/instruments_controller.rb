class InstrumentsController < ApplicationController
    def index
    @instrument = Instrument.all
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(strong_params)
    @instrument.user_id = current_user.id
    if @instrument.save
      redirect_to users_path
    else
      render :new
    end
    @instrument.save
  end

  def edit
    @instrument = Instrument.find(params[:id])
  end

  def update
    @instrument = Instrument.find(params[:id])
    @jamsession.update(strong_params)
    # redirect_to users_path
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    # redirect_to users_path
  end

  private

  def strong_params
    params.require(:instrument).permit(:instrument_type)
  end
end
