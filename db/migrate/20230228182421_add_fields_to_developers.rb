class AddFieldsToDevelopers < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :city, :string
    add_column :developers, :country, :string
    add_column :developers, :ip, :string
    add_column :developers, :country_code, :string
  end
end
