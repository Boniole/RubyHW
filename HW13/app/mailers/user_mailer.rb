class UserMailer < ApplicationMailer
  def send_order(user, order)
    @user = user
    @order = order
    order.cart.lineitems.each do |line_item|
      image = line_item.product.image
      attachments.inline[line_item.product.name+"_"+image.blob.filename.to_s] = image.download
    end
    mail( to: @user.email, subject: "Your order in CatShop")
  end
end
