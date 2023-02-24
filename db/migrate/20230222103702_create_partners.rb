class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string :company_name
      t.string :website_url
      t.string :official_email_id
      t.string :contact_person_name
      t.string :email
      t.string :contact_number

      t.timestamps
    end
  end
end
