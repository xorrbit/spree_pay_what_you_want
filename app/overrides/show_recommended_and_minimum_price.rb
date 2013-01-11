Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :replace => "#product-price",
                     :text => '<div id="product-price">
                                 <h6 class="product-section-title"><%= t(:recommended_price) %></h6>
                                 <div><span class="price selling" itemprop="price"><%= @product.recommended_price %></span></div>
                                 <h6 class="product-section-title"><%= t(:minimum_price) %></h6>
                                 <div><span class="price selling" itemprop="price"><%= @product.minimum_price %></span></div>
                               </div>',
                     :name => "show_recommended_and_minimum_price")
