class LotteryWinnersWorker
  include Sidekiq::Worker
  def perform
    LotteryWinners.call.each { |user| LotteryWinnerMailer.send_mail_to_winner(user).deliver }
  end
end