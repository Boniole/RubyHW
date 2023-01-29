class UserMailer < ApplicationMailer
  def send_order(user, order)
    @user = user
    @order = order
    order.cart.lineitems.each_with_index do |line_item, index|
      image = line_item.product.image
      attachments.inline[image.name+"_"+index.to_s+"_"+image.blob.filename.to_s] = image.download
    end
    mail( to: @user.email, subject: "Your order in CatShop")
  end
end
