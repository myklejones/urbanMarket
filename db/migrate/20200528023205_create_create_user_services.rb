class CreateCreateUserServices < ActiveRecord::Migration[6.0]
  def change
    create_table :create_user_services do |t|

      t.timestamps
    end
  end
end
