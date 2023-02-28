class Technology < ApplicationRecord
  has_many :developers

  scope :activated, -> {where(is_available: true)}

  validates :name, presence: true, uniqueness: true
end
