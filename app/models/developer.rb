class Developer < ApplicationRecord
  belongs_to :technology

  validates_presence_of :full_name, :email, :contact_number, :description
  validates_length_of :contact_number, minimum: 10, maximum: 10
end
