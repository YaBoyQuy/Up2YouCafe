class ContactsController < ApplicationController

  def index
    @contact = Contact.new
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to contacts_path
    else
      render 'new'
    end
  end

  def edit
    puts "CONTACT ID: #{params[:id]}"
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.name = params[:contact][:name]
    @contact.email = params[:contact][:email]
    @contact.phone_number = params[:contact][:phone_number]
    @contact.save

    redirect_to contacts_path
  end

  def delete
    @contact = Contact.find(params[:id])
    @contact.destroy

    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone_number)
  end
end
