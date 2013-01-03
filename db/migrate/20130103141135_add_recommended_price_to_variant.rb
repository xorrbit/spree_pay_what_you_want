class AddRecommendedPriceToVariant < ActiveRecord::Migration
  def change
    # 8.2 decimal
    add_column :variants, :recommended_price, :decimal, :precision => 8, :scale => 2
  end
end
