class DevelopersController < ApplicationController
  def create
    @developer = Developer.new(dev_params)
    if @developer.save
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

  def dev_params
    params[:developer][:city] = request.location.city
    params[:developer][:ip] = request.location.ip
    params[:developer][:country] = request.location.country
    params[:developer][:country_code] = request.location.country_code
    params.require(:developer).permit(:full_name, :email, :contact_number, :technology_id, :description, :city, :country, :country_code, :ip)
  end
end
