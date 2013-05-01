Deface::Override.new(:virtual_path => "spree/admin/products/new",
                     :insert_bottom => "[data-hook='new_product_attrs']",
                     :text => '<br/>
                                <div class="alpha four columns">
                                 <%= f.field_container :minimum_price do %>
                                   <%= f.label :minimum_price, t(:minimum_price) %> <span class="required">*</span><br />
                                   <%= f.text_field :minimum_price, :class => "fullwidth" %>
                                   <%= f.error_message_on :minimum_price %>
                                 <% end %>
                               </div>
		               <div class="four columns">
                                 <%= f.field_container :recommended_price do %>
                                   <%= f.label :recommended_price, t(:recommended_price) %> <span class="required">*</span><br />
                                   <%= f.text_field :recommended_price, :class => "fullwidth" %>
                                   <%= f.error_message_on :recommended_price %>
                                 <% end %>
                               </div>',
                     :name => "add_recommended_and_minimum_prices_to_admin_products_new")
