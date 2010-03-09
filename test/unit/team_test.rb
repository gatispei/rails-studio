require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  should_have_db_column :name
  should_have_db_column :lock_version
  should_have_db_column :created_at
  should_have_db_column :updated_at
end