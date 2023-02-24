ActiveAdmin.register Service do
  permit_params :name, :is_available

  show do |service|
    attributes_table do
      row :name
      row :is_available
      row :created_at
      row :updated_at
    end
    panel 'Service Projects' do
      table_for service&.projects do
        column :full_name 
        column :email
        column :contact_number
        column :description
        column :to_send_nd
        column :created_at
      end
    end
  end
end
