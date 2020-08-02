class ContactsController < ApplicationController

  let(:contact_data) { permit_contact_params }

  def create
    contact = Contact.new(contact_data)
    if contact.save!
      # redirect_to contacts_path
      redirect_to contact_us_dashboards_path #, notice: "Your Plan Period has Expired. Please Renew or Upgrade to continue."
    end
  end

  private

  def permit_contact_params
    # Contact.column_names.map &:to_sym
    params.require(:contacts).permit(:first_name, :last_name, :email, :subject, :message, :phone_number)
  end
end
