Deface::Override.new(:virtual_path => "spree/orders/_form",
                     :replace => ".cart-item-price-header",
                     :text => '<th class="cart-item-minimum-price-header"><%= t(:minimum_price) %></th>
                               <th class="cart-item-recommended-price-header"><%= t(:recommended_price) %></th>
                               <th class="cart-item-price-header"><%= t(:your_price) %></th>',
                     :name => "add_recommended_and_minimum_to_shopping_cart_view_headers")

Deface::Override.new(:virtual_path => "spree/orders/_line_item",
                     :insert_before => "[data-hook='cart_item_price']",
                     # Classes were set to cart-item-price to share CSS formatting
                     # TODO: create proper class and update CSS
                     :text => '<td class="cart-item-price" data-hook="cart_item_price">
                                 <%= Spree::Money.new(line_item.minimum_price, { :currency => line_item.currency }) %>
                               </td>
                               <td class="cart-item-price" data-hook="cart_item_price">
                                 <%= Spree::Money.new(line_item.recommended_price, { :currency => line_item.currency }) %>
                               </td>',
                     :name => "add_recommended_and_minimum_to_shopping_cart_view_lines")
