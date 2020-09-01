class RequestsController < ApplicationController
    def new
        @user = User.new
    end
    def index
        if params[:status] == 'Accept'
            @_current_users = Current_user.accept
        else
            @_current_users = Current_user.decline
        end

    def create
        @_current_user = Current_user.new(param[:user])
        if @_current_user.save
            redirect_to users_path
        else
            render :new
        end
            
    def destroy
        session.delete(:current_user_id)
        @_current_user = nil
        redirect_to root_url
    end

    private
      def strong_params
        params.require(:requests).permit(:status)
      end


end
