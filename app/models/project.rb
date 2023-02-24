class Project < ApplicationRecord
  has_one_attached :file
  belongs_to :service

  validates_presence_of :full_name, :email, :contact_number, :description
end
