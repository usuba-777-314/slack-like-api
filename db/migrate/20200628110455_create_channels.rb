class CreateChannels < ActiveRecord::Migration[6.0]
  def change
    create_table :channels do |t|
      t.string :name, null: false
      t.string :topic
      t.integer :users_count, null: false
      t.timestamps
    end
  end
end
