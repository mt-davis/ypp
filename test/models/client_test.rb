require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  def setup
  @client = Client.new(FirstName: "Joe")
  end
  
 test "client shouldbe valid" do
    assert @client.valid?
 end
end
