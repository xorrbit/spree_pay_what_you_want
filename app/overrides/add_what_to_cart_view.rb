Deface::Override.new(:virtual_path => "spree/orders/edit",
		     :insert_before => "#subtotal",
	             :text => '<div>
			         <h1><%= t(:pay_what_you_want) %></h1>
				 <h3><%= t(:recommended_price) %>: <span class="order-total">$20.00</span></h4>
				 <h5><%= t(:minimum_price) %>: <span class="order-total">$16.87</span></h5>
				 <%= text_field(:order, :pay_what_you_want_price) %>
			       </div>',
		     :name => "add_what_to_cart_view")
