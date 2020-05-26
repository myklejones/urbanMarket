class CreateCreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :create_messages do |t|

      t.timestamps
    end
  end
end
