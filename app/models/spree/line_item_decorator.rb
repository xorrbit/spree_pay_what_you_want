Spree::LineItem.class_eval do
  attr_accessible :recommended_price, :minimum_price
  validates :minimum_price, numericality: {greater_than_or_equal_to: 0.01}
  validates :recommended_price, numericality: {
    greater_than_or_equal_to: :minimum_price,
    message: 'must be greater than or equal to minimum price.'
  }
  validates :price, numericality: {
    greater_than_or_equal_to: :minimum_price,
    message: 'must be greater than or equal to minimum price.'
  }
end
