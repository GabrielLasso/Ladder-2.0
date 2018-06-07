require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    test "Cria usuário" do
        new_user = User.new ({username: "Player3", email: "player3@ladder.com", password: "123456"})
        assert new_user.save
    end
    test "Username é único" do
        new_user = User.new ({username: "Player2", email: "player3@ladder.com", password: "123456"})
        assert_not new_user.save
    end
    test "Email é único" do
        new_user = User.new ({username: "Player3", email: "player2@ladder.com", password: "123456"})
        assert_not new_user.save
    end
end
