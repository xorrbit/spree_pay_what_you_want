# Add recommended_price and minimum_price from master variant to product model

Spree::Product.class_eval do
  delegate_belongs_to :master, :recommended_price, :minimum_price
  attr_accessible :recommended_price, :minimum_price
  validates :minimum_price, numericality: {greater_than_or_equal_to: 0.01}
  validates :recommended_price, numericality: {
    greater_than_or_equal_to: :minimum_price,
    message: 'must be greater than or equal to minimum price.'
  }
end
