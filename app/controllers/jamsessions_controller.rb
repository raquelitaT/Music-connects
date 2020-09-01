class JamsessionsController < ApplicationController
    def index
        @jamsessions = Jamsession.all
        @markers = @jamsessions.geocoded.map do |jamsession|
            {
              lat: instrument.latitude,
              lng: instrument.longitude
            }
          end
      end

      def update
        @jamsession = Jamsession.find(params[:id])
        @jamsession.update(strong_params)
        redirect_to users_path
      end
    
      def new
        @jamsession = Jamsession.new
      end
    
      def create
        @jamsession = Jamsession.new(strong_params)
        @jamsession.user_id = current_user.id
        if @jamsession.save
          redirect_to users_path
        else
          render :new
        end
        @jamsession.save
      end

      def destroy
        @jamsession = Jamsession.find(params[:id])
        @Jamsession.destroy
        redirect_to users_path
      end
    
      def accept
        @jamsession = Jamsession.find(params[:id])
        @jamsession.status = "Accept"
        @jamsession.save
        redirect_to users_path
      end
    
      def decline
        @jamsession = Jamsession.find(params[:id])
        @jamsession.status = "Declined"
        @jamsession.save
        redirect_to users_path
      end
    
      private
      def strong_params
        params.require(:jamsession).permit(:title, :starts_at, :ends_at, :location, :status, :image, :latitude, :longitude, :description, :max_capacity, :host_id)
      end
    end
end
