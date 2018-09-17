class ForumsController < ApplicationController
  def index
  end

  #Create new instance of Forum
  def new
    @forum = Forum.new
  end

  def created
    @forum = Forum.new(forum_params)
  end

  private
    def forum_params
      @forum = params.require(:forum).permit(:title, :description)
    end
end
