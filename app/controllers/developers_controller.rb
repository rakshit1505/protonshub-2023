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
    params.require(:developer).permit(:full_name, :email, :contact_number, :technology_id, :description)
  end
end
