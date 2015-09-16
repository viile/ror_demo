require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "viile",email: "dak@viile.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "password should be present" do
    assert_not @user.valid?
  end
end
