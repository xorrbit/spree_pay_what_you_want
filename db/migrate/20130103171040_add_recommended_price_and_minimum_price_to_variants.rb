# This migration comes from spree_pay_what_you_want (originally 20130103171040)
class AddRecommendedPriceAndMinimumPriceToVariants < ActiveRecord::Migration
  def change
    # 8.2 decimal
    add_column :spree_variants, :recommended_price, :decimal, :precision => 8, :scale => 2, :default => 0
    add_column :spree_variants, :minimum_price, :decimal, :precision => 8, :scale => 2, :default => 0

    Spree::Variant.reset_column_information

    say_with_time 'Setting recommend_price and minimum_price to variant price' do
      Spree::Variant.all.each do |v|
        if v.price
          v.update_attributes!(:recommended_price => v.price, :minimum_price => v.price)
        elsif v.product && v.product.master.price
          v.update_attributes!(:recommended_price => v.product.master.price, :minimum_price => v.product.master.price)
        else
          raise 'No price found to copy over to recommended_price and minimum_price'
        end
      end
    end
  end
end
