class PostsController < ApplicationController
    def index
    @jamsession = JamSession.find(params[:jamsession_id])
    @posts = Post.all
  end

  def new
    @jamsession = JamSession.find(params[:jamsession_id])
    @post = Post.new
  end

  def create
    @jamsession = JamSession.find(params[:jam_session_id])
    @post = Post.new(strong_params)
    @post.user_id = current_user.id
    @post.jamsession = @jamsession
    if @post.save
      redirect_to root_path
    else
      render :new
    end
    @post.save
  end

  def destroy
    @jamsession = JamSession.find(params[:jamsession_id])
     # @post.user_id = current_user.id
    @post.destroy
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
      params.require(:posts).permit(:content)
    end
end
