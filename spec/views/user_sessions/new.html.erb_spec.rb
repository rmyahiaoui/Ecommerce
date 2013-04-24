require 'spec_helper'

describe "user_sessions/new.html.erb" do
  before(:each) do
    assign(:user_session, stub_model(UserSession,
      :username => "MyString",
      :password => "MyString"
    ).as_new_record)
  end

  
end
