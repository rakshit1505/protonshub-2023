class Partner < ApplicationRecord
  has_one_attached :file
  validates_presence_of :company_name, :website_url, :official_email_id, :contact_person_name, :email, :contact_number
end