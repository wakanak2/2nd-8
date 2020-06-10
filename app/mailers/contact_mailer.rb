class ContactMailer < ApplicationMailer
  default from: 'from@example.com'
  


  def send_confirm_to_user(resource)
  	@user=resource

      mail to: resource.email,subject: '登録完了しました。'
  end
end