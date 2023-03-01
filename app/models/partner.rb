class Partner < ApplicationRecord
  has_one_attached :file
  validates_presence_of :company_name, :website_url, :official_email_id, :contact_person_name, :email, :contact_number
  validates :contact_number, numericality: { only_integer: true }, length: {minimum: 10, maximum: 10}

  after_create :email_notification

  def email_notification
    UserNotifierMailer.form_notification(self).deliver
  end
end
