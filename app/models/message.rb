class Message < ActiveRecord::Base
 named_scope :recent, lambda { |limit=5, *|
                       { :order => 'created_at DESC',
                       :limit => limit }
                   }

  named_scope :urgent, :conditions => {:priority => 'urgent'}

    belongs_to :user
                      
end
