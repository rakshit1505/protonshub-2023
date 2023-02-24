ActiveAdmin.register Partner do
  menu label: 'Become Partner'

  permit_params :company_name, :website_url, :official_email_id, :contact_person_name, :email_id, :contact_number

  actions :all, except: [:show, :edit]

  index do
    selectable_column
    id_column
    column :company_name
    column :website_url
    column :official_email_id
    column :contact_person_name
    column :email_id
    column :contact_number
    column 'Download Attached File' do |filename|
      link_to 'Download', rails_blob_path(filename.file, disposition: 'attachment')  if filename.file.present?
    end
  end
end
