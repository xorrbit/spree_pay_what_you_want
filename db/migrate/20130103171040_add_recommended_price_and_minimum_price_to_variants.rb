class AddRecommendedPriceAndMinimumPriceToVariants < ActiveRecord::Migration
  def change
    # 8.2 decimal
    add_column :spree_variants, :recommended_price, :decimal, :precision => 8, :scale => 2, :default => 0
    add_column :spree_variants, :minimum_price, :decimal, :precision => 8, :scale => 2, :default => 0
  end
end
