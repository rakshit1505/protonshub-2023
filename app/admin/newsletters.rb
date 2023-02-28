ActiveAdmin.register Newsletter do
  permit_params :email

  menu label: 'Newsletter'

  actions :all, except: [:show, :edit]

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end
end
