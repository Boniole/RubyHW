class LotteryWinnerMailer < ApplicationMailer
  def send_mail_to_winner(user)
    mail(to: user.email, subject: 'You are winner!', body: "Here is your discount code: <<Becon>>!")
  end
end