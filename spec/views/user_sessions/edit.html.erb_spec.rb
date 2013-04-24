require 'spec_helper'

describe "user_sessions/edit.html.erb" do
  before(:each) do
    @user_session = assign(:user_session, stub_model(UserSession,
      :username => "MyString",
      :password => "MyString"
    ))
  end

end
