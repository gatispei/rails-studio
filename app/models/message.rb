class Message < ActiveRecord::Base
#  named_scope :recent, lambda { |limit=5, *|
#                        { :order => :created_at => 'created_at DESC',
#                        :limit => limit }
#                    }

  named_scope :urgent, :conditions => {:priority => 'urgent'}

    has_one :user
                      
end
