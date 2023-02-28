class NewslettersController < ApplicationController
  def create
    @newsletter = Newsletter.new(email: params[:newsletter][:email])
    if @newsletter.save
      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.js
      end
    end
  end
end
