class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.boolean :is_available, default: false

      t.timestamps
    end
  end
end
