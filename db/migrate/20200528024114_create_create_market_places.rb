class CreateCreateMarketPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :create_market_places do |t|

      t.timestamps
    end
  end
end
