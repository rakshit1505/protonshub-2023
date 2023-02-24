ActiveAdmin.register Technology do
  permit_params :name, :is_available

  show do |technology|
    attributes_table do
      row :name
      row :is_available
      row :created_at
      row :updated_at
    end
    panel 'Technology Devlopers' do
      table_for technology&.developers do
        column :full_name 
        column :email
        column :contact_number
        column :description
        column :created_at
      end
    end
  end
end
