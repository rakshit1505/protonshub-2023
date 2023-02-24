class ProjectsController < ApplicationController 
  def create
    @project = Project.new(project_params)
    if @project.save
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

  def project_params
    params.require(:project).permit(:full_name, :email, :contact_number, :service_id, :description, :to_send_nd, :file)
  end
end
