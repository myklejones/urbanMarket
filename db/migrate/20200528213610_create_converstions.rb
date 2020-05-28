class CreateConverstions < ActiveRecord::Migration[6.0]
  def change
    create_table :converstions do |t|

      t.timestamps
    end
  end
end
