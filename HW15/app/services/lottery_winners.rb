class LotteryWinners
  def self.call
    Order.where(status: 1, created_at: Time.current.all_month)
         .uniq.sample(2)
         .map { |order| User.find(order.user_id) }
  end
end
