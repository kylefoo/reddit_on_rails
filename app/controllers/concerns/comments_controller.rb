class CommentsController < ApplicationController

  def show

  end

  def new
  	@comment = Comment.new
  end
  
  def create
  @comment = Comment.create(params[:comment])
  redirect_to :back
  end

end
