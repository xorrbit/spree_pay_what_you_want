Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :insert_after => "code[erb-loud]:contains('number_field_tag')",
                     :text => ' x $<%= number_field_tag :price, number_to_currency(@product.recommended_price, :unit => \'\'), :min => @product.minimum_price %>',
                     :name => "add_custom_price_field_to_product_page")
