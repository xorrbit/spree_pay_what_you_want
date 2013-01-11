Spree::Order.class_eval do
  attr_accessible :pay_what_you_want_price
  attr_reader :pay_what_you_want_price

  def pay_what_you_want_price=(price)
    @pay_what_you_want_price = price rescue nil

#    self.adjustments.create({ :amount => (-1 * price.to_i),
#			  :source => "Pay What You Want",
#                          :originator => self,
#			  :label => "Pay What You Want",
#			  :mandatory => true,
#			  :state => "closed" }, :without_protection => true)
  end
end
