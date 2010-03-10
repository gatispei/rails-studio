class User < ActiveRecord::Base
    include Clearance::User

    has_one :team
    has_many :messages


end
