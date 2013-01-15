Spree::OrderPopulator.class_eval do
  def populate(from_hash, price)
    from_hash[:products].each do |product_id,variant_id|
      attempt_cart_add(variant_id, from_hash[:quantity], price.to_s.to_d)
    end if from_hash[:products]

    from_hash[:variants].each do |variant_id, quantity|
      attempt_cart_add(variant_id, quantity, price.to_s.to_d)
    end if from_hash[:variants]

    valid?
  end

  private

  def attempt_cart_add(variant_id, quantity, price)
    quantity = quantity.to_i
    variant = Spree::Variant.find(variant_id)
    if quantity > 0
      if check_stock_levels(variant, quantity)
        @order.add_variant(variant, price, quantity, currency)
      end
    end
  end
end
