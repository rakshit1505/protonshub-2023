ActiveAdmin.register Developer do
  permit_params :full_name, :email, :contact_number, :technology_id, :description, :city, :country, :country_code, :ip

  menu label: 'Hire Developer'

  actions :all, except: [:edit]

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :contact_number
    column 'Technogy Name', :technology_id do |dev|
      link_to dev.technology&.name&.titleize, admin_technology_path(dev.technology_id)
    end
    column :created_at
    actions
  end
end
