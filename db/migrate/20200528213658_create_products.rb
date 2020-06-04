class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.string :description
      t.integer :price
      # t.references :user, index: true , foreign_key: true,  polymorphic: true
      # t.references :user,  polymorphic: true

      t.timestamps
    end
  end
end
