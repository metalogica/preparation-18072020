require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'the method #full_name should return a nicely formatted full name' do
    # 1. setup
    user = User.new(email: 'satoshi@email.com', first_name: 'satoshi', last_name: 'nakamoto', password: 'qwerty')
    # 2. exercise / verify
    assert_equal user.full_name, 'Satoshi Nakamoto'
  end
end
