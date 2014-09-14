class LinksController < ApplicationController
  def show
  end
  
  def new
  	@link = Link.new

  	respond_to do |format|
  	  format.html
  	 end
  end

  def create
    params.permit!
  	@link = Link.new(params[:link])

  	respond_to do |format|
  	  if @link.save
  	  	format.html { render :action => 'create', :notice => 'link was successfully added'}
  	  else
  	  	format.html { render :action=> 'new'}
  	  end
  	 end
  end
  
  private
  def link_params
    params.require(:title).permit(:user, :url)
  end

end
