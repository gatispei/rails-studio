class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string    :note
      t.initeger  :user_id
      t.string    :priority
      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
