class EmailJob
  @queue = 'email'

  def self.perform(order_id)
    order = Order.find(order_id)
    # all the stuff
  end
end
