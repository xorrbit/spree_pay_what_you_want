class AddRecommendedPriceAndMinimumPriceToLineItems < ActiveRecord::Migration
  def change
    # 8.2 decimal
    add_column :spree_line_items, :recommended_price, :decimal, :precision => 8, :scale => 2, :default => 0
    add_column :spree_line_items, :minimum_price, :decimal, :precision => 8, :scale => 2, :default => 0
  end
end
