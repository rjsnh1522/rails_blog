class PostsController < ApplicationController

  def index

  end

  def new
    @post=Post.new

  end

  def create
    @post=Post.new post_params

    if @post.save
      redirect_to @post, notice: "Hellz Yeah, Mackenzie!Your Article was successfully Saved!"
    else
      render 'new',notice:"Oh no, Mackenzie! I was unabe to save your post."
    end

  end

  def show

  end

  private
  def post_param
    params.require(:post).permit(:title, :content)
  end

end
