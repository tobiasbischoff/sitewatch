class PartsController < ApplicationController
  def index
    @parts = Part.paginate(page: params[:page]).order('lower(serialnumber) ASC').search(params[:search])
  end

  def show
      @part = Part.find(params[:id])
      @site = Site.where("partynumber = ?", @part.partynumber)
    
  end
end
