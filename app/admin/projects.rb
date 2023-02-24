ActiveAdmin.register Project do
  permit_params :full_name, :email, :contact_number, :service_id, :description, :to_send_nd

  menu label: 'Have a Project'

  actions :all, except: [:show, :edit]

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :to_send_nd
    column :service_id
    column 'Service Name', :service_id do |pro|
      link_to pro.service&.name&.titleize, admin_service_path(pro.service_id)
    end
    column :contact_number
    column :description
    column 'Download Attached File' do |filename|
      link_to 'Download', rails_blob_path(filename.file, disposition: 'attachment')  if filename.file.present?
    end
    column :created_at
  end
end
