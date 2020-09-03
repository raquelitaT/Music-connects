class UserinstrumentsController < ApplicationController
    def index
    @userinstruments = UserInstrument.all
  end

  def new
    @userinstrument = UserInstrument.new
  end

  def create
    @userinstrument = UserInstrument.new(strong_params)
    @userinstrument.user_id = current_user.id
    if @userinstrument.save
      redirect_to users_path
    else
      render :new
    end
    @userinstrument.save
  end

  def edit
    @userinstrument = UserInstrument.find(params[:id])
  end

  def update
    @userinstrument = UserInstrument.find(params[:id])
    @jamsession.update(strong_params)
    # redirect_to users_path
  end

  private

  def strong_params
    params.require(:userinstrument).permit(:skill_level)
  end
end

