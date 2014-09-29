class PagesController < ApplicationController

  def index
    params[:page] ||= 1
    params[:per_page] ||=3
    @links = Link.paginate(:page => params[:page], :per_page => params[:per_page])


  end
end
