class UserMailer < ApplicationMailer
  def send_order(user, order)
    @user = user
    @order = order

    mail( to: @user.email, subject: "Your order in CatShop")
  end
end
