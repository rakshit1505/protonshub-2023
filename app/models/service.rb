class Service < ApplicationRecord
  has_many :projects

  scope :activated, -> {where(is_available: true)}

  validates :name, presence: true, uniqueness: true
end
