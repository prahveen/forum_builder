class ForumsController < ApplicationController
  before_action :find_forum, only: [:show, :edit, :update, :destroy]

  def index
    @forums = Forum.all.order("created_at DESC")
  end

  def show
  end

  #Create new instance of Forum
  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)
    if @forum.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @forum.update(forum_params)
      redirect_to forum_path
    else
      render 'edit'
    end
  end

  def destroy
    @forum.destroy
    redirect_to root_path
  end

  private
    def forum_params
      @forum = params.require(:forum).permit(:title, :description)
    end

    def find_forum
      @forum = Forum.find(params[:id])
    end
end
