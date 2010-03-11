class User < ActiveRecord::Base
    include Clearance::User

    belongs_to :team
    has_many :messages


end
