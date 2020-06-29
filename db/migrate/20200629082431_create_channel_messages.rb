class CreateChannelMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :channel_messages do |t|
      t.references :channel, foreign_key: true
      t.references :message, foreign_key: true
      t.timestamps
    end
  end
end
