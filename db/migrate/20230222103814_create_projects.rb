class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :full_name
      t.string :email
      t.string :contact_number
      t.integer :service_id
      t.text :description
      t.boolean :to_send_nd, default: false

      t.timestamps
    end
  end
end
