# Add recommended_price and minimum_price to variant model

Spree::Variant.class_eval do
  attr_accessible :recommended_price, :minimum_price
  validates :recommended_price, :numericality => { :greater_than_or_equal_to => 0 }, :presence => true, :if => proc { Spree::Config[:require_master_price] }
  validates :minimum_price, :numericality => { :greater_than_or_equal_to => 0 }, :presence => true, :if => proc { Spree::Config[:require_master_price] }
end
