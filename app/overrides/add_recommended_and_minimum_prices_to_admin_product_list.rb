Deface::Override.new(:virtual_path => "spree/admin/products/index",
                     :replace => "table#listing_products",
                     :text => '<table class="index" id="listing_products">
                               <colgroup>
                                  <col style="width: 15%;">
                                  <col style="width: 10%;">
                                  <col style="width: 28%;">
                                  <col style="width: 10%;">
                                  <col style="width: 10%;">
                                  <col style="width: 10%;">
                                  <col style="width: 17%;">
                               </colgroup>
                               <thead>
                                 <tr data-hook="admin_products_index_headers">
                                   <th><%= t(:sku) %></th>
                                   <th colspan="2"><%= sort_link @search,:name, t(:name), { :default_order => "desc" }, {:title => \'admin_products_listing_name_title\'} %></th>
                                   <th><%= t(:recommended_price) %></th>
                                   <th><%= t(:minimum_price) %></th>
                                   <th><%= sort_link @search,:master_default_price_amount, t(:master_price), {}, {:title => \'admin_products_listing_price_title\'} %></th>
                                   <th data-hook="admin_products_index_header_actions" class="actions"></th>
                                 </tr>  
                               </thead>  
                               <tbody>
                                 <% @collection.each do |product| %>
                                     <tr <%= "style=\'color: red;\'" if product.deleted? %> id="<%= spree_dom_id product %>" data-hook="admin_products_index_rows" class="<%= cycle(\'odd\', \'even\') %>">
                                       <td class="align-center"><%= product.sku rescue \'\' %></td>
                                       <td class="align-center"><%= mini_image(product) %></td>
                                       <td><%= link_to product.try(:name), edit_admin_product_path(product) %></td>
                                       <td class="align-center"><%= number_to_currency(product.recommended_price) rescue \'\' %></td>
                                       <td class="align-center"><%= number_to_currency(product.minimum_price) rescue \'\' %></td>
                                       <td class="align-center"><%= product.display_price rescue \'\' %></td>
                                       <td class="actions" data-hook="admin_products_index_row_actions">
                                         <%= link_to_edit product, :no_text => true, :class => \'edit\' unless product.deleted? %>
                                         &nbsp;
                                         <%= link_to_clone product, :no_text => true, :class => \'clone\' %>
                                         &nbsp;
                                         <%= link_to_delete product, :no_text => true unless product.deleted? %>
                                       </td>
                                     </tr>
                                 <% end %>
                               </tbody>
                             </table>',
                     :name => "add_recommended_and_minimum_prices_to_admin_product_list")
