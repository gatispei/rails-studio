require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  
  Factory.define :user do |t|
    t.first_name 'Sara'
    t.last_name 'Tewolde'
    t.email 'tewolde@testing.com'
    t.password '123'
    
  end
  
  Factory.define :message do |t|
    t.body 'Body of the message'
    t.priority 'low'
    t.association :user
    
  end
  
  context "A Message" do 
    
    setup do
      user1 = Factory.create(:user)
      user2 = Factory.create(:user, :first_name => 'John', 
                                    :last_name =>'Doe',
                                    :email => 'joe@testing.com'
                                    )

      message_user1 = Factory.create(:message, :body => "Message 1 for User 1",
                                                :user => user1)
      message_user2 = Factory.create(:message, :body => "Message 2 for User 2",
                                               :priority => 'urgent',
                                               :user => user2)
    end
     
    should "return the urgent messages only" do
      assert_equal user2.urgent, 1
      assert_equal user1.urgent, 0

    end
  end
  
  

end
