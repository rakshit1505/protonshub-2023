class AddFieldsToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :city, :string
    add_column :projects, :country, :string
    add_column :projects, :ip, :string
    add_column :projects, :country_code, :string
  end
end
