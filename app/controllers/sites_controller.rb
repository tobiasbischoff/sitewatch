class SitesController < ApplicationController
  def index
    @tmp = Site.search(params[:search])
    if !@tmp.first
      redirect_to :controller => 'parts', :action => 'index', :search => params[:search] 
    else 
    @sites = Site.paginate(page: params[:page]).order('lower(partyname) ASC').search(params[:search])
  end
  end
  
  def show
    @site = Site.find(params[:id])
    @parts = Part.where("partynumber = ?", @site.partynumber)
  end
end
