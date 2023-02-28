class Developer < ApplicationRecord
  belongs_to :technology

  validates_presence_of :full_name, :email, :contact_number, :description
  validates :contact_number, numericality: { only_integer: true }, length: {minimum: 10, maximum: 10}
end
