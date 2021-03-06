Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :insert_top => "[data-hook='admin_product_form_right']",
                     :text => '<%= f.field_container :recommended_price do %>
                                 <%= f.label :recommended_price, raw(t(:recommended_price) + content_tag(:span, \' *\', :class => "required")) %>
                                 <%= f.text_field :recommended_price, :value => number_to_currency(@product.recommended_price, :unit => \'\') %>
                                 <%= f.error_message_on :recommended_price %>
                               <% end %>

                               <%= f.field_container :minimum_price do %>
                                 <%= f.label :minimum_price, raw(t(:minimum_price) + content_tag(:span, \' *\', :class => "required")) %>
                                 <%= f.text_field :minimum_price, :value => number_to_currency(@product.minimum_price, :unit => \'\') %>
                                 <%= f.error_message_on :minimum_price %>
                               <% end %>',
                     :name => "add_prices_to_admin")
