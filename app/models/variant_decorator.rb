# Add recommended_price and minimum_price to variant model

Variant.class_eval do

  has_one :recommended_price,
    :class_name => 'Spree::Price',
    :conditions => proc { { :currency => Spree::Config[:currency] } },
    :dependent => :destroy

  has_one :minimum_price,
    :class_name => 'Spree:Price',
    :conditions => proc { { :currency => Spree::Config[:currency] } },
    :dependent => :destroy

end
