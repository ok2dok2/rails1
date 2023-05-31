class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
    redirect_to new_contact_path, notice:"投稿完了"
    else
      render :new
    end
  end
  
  private

  def contact_params
    params.require(:contact).permit(:name, :email, :contact)
  end
end
