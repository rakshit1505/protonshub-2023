ActiveAdmin.register AdminUser do
  config.filters = false
  permit_params :email, :password, :password_confirmation

  actions :all, except: :destroy

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  show do
    attributes_table do
      row :email
      row :created_at
      row :updated_at
    end
  end

end
