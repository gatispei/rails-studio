class ClearanceCreateUsers < ActiveRecord::Migration
    def self.up

        add_column :users, :encrypted_password, :string, :limit => 128
        add_column :users, :salt, :string, :limit => 128
        add_column :users, :confirmation_token, :string, :limit => 128
        add_column :users, :remember_token, :string, :limit => 128
        add_column :users, :email_confirmed, :boolean, :default => false, :null => false

        add_index :users, [:id, :confirmation_token]
        add_index :users, :email
        add_index :users, :remember_token
    end

    def self.down

        drop_column :users, :encrypted_password
        drop_column :users, :salt
        drop_column :users, :confirmation_token
        drop_column :users, :remember_token
        drop_column :users, :email_confirmed

        drop_index :users, [:id, :confirmation_token]
        drop_index :users, :email
        drop_index :users, :remember_token

    end
end
