class PagesController < ApplicationController

  def index
    params[:page] ||= 1
    params[:per_page] ||=10
    @links = Link.paginate(:page => params[:page], :per_page => params[:per_page])
    @user = current_user

  end
end
