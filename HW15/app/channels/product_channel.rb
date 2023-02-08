class ProductChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "product_#{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
