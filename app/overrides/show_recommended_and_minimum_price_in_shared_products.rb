Deface::Override.new(:virtual_path => "spree/shared/_products",
                     :replace => ".price",
                     :text => '<span class="price selling" itemprop="price"><%= number_to_currency(product.minimum_price) %> to <%= number_to_currency(product.recommended_price) %></span>',
                     :name => "show_recommended_and_minimum_price_in_shared_products")
