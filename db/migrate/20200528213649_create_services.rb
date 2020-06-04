class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title 
      t.string :description
      t.integer :price 
      t.string :time_span
      t.belongs_to :user
      t.belongs_to :market

     
      t.timestamps
    end
  end
end
