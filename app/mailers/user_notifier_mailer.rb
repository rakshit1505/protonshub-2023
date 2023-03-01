class UserNotifierMailer < ApplicationMailer
  default :from => 'support@protonshub.com'

  def form_notification(contact)
    @contact = contact 
    mail( :to => "leads@protonshub.com",
    :subject => "Contact Form Lead - #{contact.full_name} (#{contact.city.present? ? contact.city : 'NA'})" )
  end
end
