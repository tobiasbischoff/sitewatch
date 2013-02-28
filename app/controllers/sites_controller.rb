class SitesController < ApplicationController
  def index
    @sites = Site.paginate(page: params[:page]).order('partyname ASC')
  end
  
  def show
    @site = Site.find(params[:id])
    @parts = Part.all
  end
end
