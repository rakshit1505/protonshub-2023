class Developer < ApplicationRecord
  belongs_to :technology

  validates_presence_of :full_name, :email, :contact_number, :description
end
