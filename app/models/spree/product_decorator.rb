# Add recommended_price and minimum_price from master variant to product model

Spree::Product.class_eval do
  delegate_belongs_to :master, :recommended_price, :minimum_price
  attr_accessible :recommended_price, :minimum_price
end
