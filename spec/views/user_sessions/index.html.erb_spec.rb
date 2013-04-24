require 'spec_helper'

describe "user_sessions/index.html.erb" do
  before(:each) do
    assign(:user_sessions, [
      stub_model(UserSession,
        :username => "Username",
        :password => "Password"
      ),
      stub_model(UserSession,
        :username => "Username",
        :password => "Password"
      )
    ])
  end

  
end
