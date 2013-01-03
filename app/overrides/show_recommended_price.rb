Deface::Override.new(:virtual_path => "spree/products/show",
		     :insert_before => "[data-hook='description']",
		     :text => "<h1>Recommended Price: <%= @product.recommended_price %></h1>",
		     :name => "show_recommended_price")
