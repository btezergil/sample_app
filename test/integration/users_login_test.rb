require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "login with invalid info" do
    get login_path
    assert_template 'sessions/new'
    post login_path, session: {email: "", password: ""}
    assert_template 'sessions/new'
    assert !flash.empty?
    get root_path
    assert flash.empty?
  end
end

24.03