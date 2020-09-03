class PostsController < ApplicationController
  def index
    @jamsession = JamSession.find(params[:jamsession_id])
    @posts = Post.all
  end

  def new
    @jamsession = JamSession.find(params[:jamsession_id])
  end

  def create
    @jamsession = JamSession.find(params[:jamsession_id])
    @post = Post.new(strong_params)
    @post.user = current_user
    @post.jam_session_id = @jamsession.id
    if @post.save!
      redirect_to jamsession_path(@jamsession, anchor: "post-#{@post.id}")
    else
      render "jamsessions/show"
    end
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
      params.require(:post).permit(:content)
    end
end
