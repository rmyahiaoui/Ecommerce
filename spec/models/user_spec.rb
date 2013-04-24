require 'spec_helper'

describe User do
	before(:each) do
		@attr = { :username => "rmyahiaoui", :email => "rmyahiaoui@gmail.com",:password_field => "tototo",:password_confirmation => "tototo" }
	end
	it "devrait creer une nouvelle instance dotee des attributs valides" do
		#User.create!(@attr)
	end
end
