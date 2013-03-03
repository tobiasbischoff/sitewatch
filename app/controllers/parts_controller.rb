class PartsController < ApplicationController
  def index
    @parts = Part.paginate(page: params[:page]).order('lower(serialnumber) ASC').search(params[:search])
  end

  def show
      @part = Part.find(params[:id])
      @site = Site.where("partynumber = ?", @part.partynumber)
    
      @boxnotes = Boxnote.where(:serial => @part.serialnumber)
      
      if !@boxnotes.first
        @boxnotes = [ Boxnote.new(:boxnote => "No note yet", :serial => "1234"), Boxnote.new(:boxnote => "No note yet", :serial => "1234")]
      end
             
  end
end
