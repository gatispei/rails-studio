class Team < ActiveRecord::Base
  has_many :users
  accepts_nested_attributes_for :users, :allow_destroy => true

  validates_presence_of :name
  validates_uniqueness_of :name

  def with_extra_users(extra=2)
    extra.times{ users.build }
    logger.debug("number of users: " + users.length.to_s)
    self
  end
end