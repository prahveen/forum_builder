class ForumsController < ApplicationController
  def index
  end

  #Create new instance of Forum
  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)
    if forum.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def forum_params
      @forum = params.require(:forum).permit(:title, :description)
    end
end
