class Service < ApplicationRecord
  has_many :projects

  scope :activated, -> {where(is_available: true)}
end
