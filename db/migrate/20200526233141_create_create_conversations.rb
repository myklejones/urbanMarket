class CreateCreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :create_conversations do |t|

      t.timestamps
    end
  end
end
