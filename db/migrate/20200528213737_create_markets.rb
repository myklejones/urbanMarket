class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.string :category 
      
      t.timestamps
    end
  end
end
