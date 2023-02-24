class CreateDevelopers < ActiveRecord::Migration[6.1]
  def change
    create_table :developers do |t|
      t.string :full_name
      t.string :email
      t.string :contact_number
      t.integer :technology_id
      t.text :description

      t.timestamps
    end
  end
end
