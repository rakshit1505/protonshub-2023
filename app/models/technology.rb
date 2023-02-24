class Technology < ApplicationRecord
  has_many :developers

  scope :activated, -> {where(is_available: true)}
end
