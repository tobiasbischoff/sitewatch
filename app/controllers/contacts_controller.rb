class ContactsController < ApplicationController
  def index
        @contacts = Contact.paginate(page: params[:page]).order('lower(cname) ASC')
  end

  def show
  end
end
