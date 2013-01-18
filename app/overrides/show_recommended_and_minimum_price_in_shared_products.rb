Deface::Override.new(:virtual_path => "spree/shared/_products",
                     :replace => ".price",
                     :text => '<span class="price selling" itemprop="price">$<%= product.recommended_price %> to $<%= product.minimum_price %></span>',
                     :name => "show_recommended_and_minimum_price_in_shared_products")
