class ForumsController < ApplicationController
  def index
  end

  #Create new instance of Forum
  def new
    @forum = Forum.new
  end
end
