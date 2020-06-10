class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'



  def send_confirm_to_user(resource)

 
    mail to: resource.email,subject: '登録完了しました。'
  end
end