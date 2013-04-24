require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :username => "MyString",
      :email => "MyString",
      :crypted_password => "MyString",
      :password_salt => "MyString",
      :persistence_token => "MyString",
      :password_field => "MyString",
      :photo => "MyString",
      :adress => "MyString",
      :code_postal => 1,
      :ville => "MyString",
      :pay => "MyString"
    ).as_new_record)
  end

 
end
