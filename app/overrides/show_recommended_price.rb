Deface::Override.new(:virtual_path => "spree/products/_cart_form",
		     :insert_before => "[data-hook='product_price']",
	             :text => "<h1>Recommended Price: <%= @product.recommended_price %><br/>Minimum Price: <%= @product.minimum_price %></h1>",
		     :name => "show_recommended_price")
