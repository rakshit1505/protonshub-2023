class NewslettersController < ApplicationController
  def create
    @newsletter = Newsletter.new(email: params[:newsletter][:email])
    if @newsletter.save
      respond_to do |format|
        format.js
        format.html { redirect_to request.referer&.split('/')&.last&.pluralize + "_path" }
      end
    else
      respond_to do |format|
        format.js
        format.html { redirect_to request.referer&.split('/')&.last&.pluralize + "_path" }
      end
    end
  end
end
