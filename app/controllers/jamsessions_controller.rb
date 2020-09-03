class JamsessionsController < ApplicationController
  def index
    @jamsessions = JamSession.all
    @markers = @jamsessions.geocoded.map do |jamsession|
      {
        lat: jamsession.latitude,
        lng: jamsession.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { jamsession: jamsession })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show
    @jamsession = JamSession.find(params[:id])
  end

  def new
    @jamsession = JamSession.new
  end

  def create
    @jamsession = JamSession.new(strong_params)
    @jamsession.user_id = current_user.id
    if @jamsession.save
      redirect_to users_path
    else
      render :new
    end
    @jamsession.save
  end

  def edit
    @jamsession = JamSession.find(params[:id])
  end

  def update
    @jamsession = JamSession.find(params[:id])
    @jamsession.update(strong_params)
    # redirect_to users_path
  end

  def destroy
    @jamsession = JamSession.find(params[:id])
    @jamsession.destroy
    # redirect_to users_path
  end

  private

  def strong_params
    params.require(:jamsession).permit(:title, :starts_at, :ends_at, :location, :status, :image, :latitude, :longitude, :description, :max_capacity, :host_id)
  end
end
