class CreateTeamTable < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.column :name, :string, :limit => 30, :null => false
      t.column :lock_version, :integer, :limit => 12, :null => false, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
