class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      all_date: params[:all_date],
      content: params[:content],
      )
    if @post.save
      flash[:notice] = "スケジュールを作成しました"
      redirect_to('/')
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.start_date = params[:start_date]
    @post.end_date = params[:end_date]
    @post.all_date = params[:all_date]
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "スケジュールを変更しました"
      redirect_to("/")
    else
      render("posts/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to("/")
  end

end
