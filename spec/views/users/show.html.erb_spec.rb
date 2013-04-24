require 'spec_helper'

describe "users/show.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  
end
