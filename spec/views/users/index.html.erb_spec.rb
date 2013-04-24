require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :username => "Username",
        :email => "Email",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :persistence_token => "Persistence Token",
        :password_field => "Password Field",
        :photo => "Photo",
        :adress => "Adress",
        :code_postal => 1,
        :ville => "Ville",
        :pay => "Pay"
      ),
      stub_model(User,
        :username => "Username",
        :email => "Email",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :persistence_token => "Persistence Token",
        :password_field => "Password Field",
        :photo => "Photo",
        :adress => "Adress",
        :code_postal => 1,
        :ville => "Ville",
        :pay => "Pay"
      )
    ])
  end

  
end
