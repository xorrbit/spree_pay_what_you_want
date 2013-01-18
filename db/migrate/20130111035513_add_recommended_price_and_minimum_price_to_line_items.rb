class AddRecommendedPriceAndMinimumPriceToLineItems < ActiveRecord::Migration
  def change
    # 8.2 decimal
    add_column :spree_line_items, :recommended_price, :decimal, :precision => 8, :scale => 2, :default => 0
    add_column :spree_line_items, :minimum_price, :decimal, :precision => 8, :scale => 2, :default => 0

    Spree::LineItem.reset_column_information

    say_with_time 'Setting recommend_price and minimum_price to line item price' do
      Spree::LineItem.all.each do |l|
        if l.price
          l.update_attributes!(:recommended_price => l.price, :minimum_price => l.price)
        elsif l.variant
          l.update_attributes!(:recommended_price => l.variant.price, :minimum_price => l.variant.price)
        else
          raise 'No price found to copy over to recommended_price and minimum_price'
        end
      end
    end
  end
end
