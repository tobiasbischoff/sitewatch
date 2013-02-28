class SitesController < ApplicationController
  def index
    @sites = Site.paginate(page: params[:page]).order('lower(partyname) ASC')
  end
  
  def show
    @site = Site.find(params[:id])
    @parts = Part.where("partynumber = ?", @site.partynumber)
  end
end
