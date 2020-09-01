class InstrumentsController < ApplicationController
    def index
        @instruments = Instrument.where(params[:instrument_name])
      end
    
     
      def new
        @instrument = Instrument.new
      end
    
      def create
        @instrument = Instrument.new(strong_params)
        @instrument.user_id = current_user.id
        @instrument.save!
        redirect_to instrument_path(@instrument)
      end
    
      def edit
        @instrument = Instrument.find(params[:id])
      end
    
      def update
        @instrument = Instrument.find(params[:id])
        @instrument.update(strong_params)
        redirect_to instrument_path(@instrument)
      end
    
      def destroy
        @instrument = Instrument.find(params[:id])
        @instrument.destroy
        redirect_to users_path
      end
    
      private
    
      def strong_params
        params.require(:instrument).permit(:instrument_type)
      end
    end
end
