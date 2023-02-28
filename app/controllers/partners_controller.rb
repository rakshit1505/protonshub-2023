class PartnersController < ApplicationController
  def create
    @partner = Partner.new(partner_params)
    if @partner.save
      respond_to do |format|
        format.js
        format.html {redirect_to thank_you_path}
      end
    else
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def partner_params
    params[:partner][:city] = request.location.city
    params[:partner][:ip] = request.location.ip
    params[:partner][:country] = request.location.country
    params[:partner][:country_code] = request.location.country_code
    params.require(:partner).permit(:company_name, :website_url, :official_email_id, :contact_person_name, :email, :contact_number, :file, :city, :country, :country_code, :ip)
  end
end
