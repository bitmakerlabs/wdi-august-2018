class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    @contact.first_name = params[:contact][:first_name]
    @contact.last_name  = params[:contact][:last_name]
    @contact.email      = params[:contact][:email]
    @contact.notes      = params[:contact][:notes]
    @contact.save

    redirect_to contact_url(@contact)
  end

  def show
  end
end
