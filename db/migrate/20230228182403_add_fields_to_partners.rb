class AddFieldsToPartners < ActiveRecord::Migration[6.1]
  def change
    add_column :partners, :city, :string
    add_column :partners, :country, :string
    add_column :partners, :ip, :string
    add_column :partners, :country_code, :string
  end
end
