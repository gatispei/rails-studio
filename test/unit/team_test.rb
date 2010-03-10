require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  Factory.define :team do |t|
    t.name 'Table in the back'
  end

  setup do
    Factory.create :team
  end

  should_have_db_column :name
  should_have_db_column :lock_version
  should_have_db_column :created_at
  should_have_db_column :updated_at

  should_validate_presence_of :name
  should_validate_uniqueness_of :name
end