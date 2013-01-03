# Add recommended_price and minimum_price to variant model

Spree::Variant.class_eval do
  attr_accessible :recommended_price, :minimum_price
end
