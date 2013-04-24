class User < ActiveRecord::Base
	
	has_many :commandes
	acts_as_authentic do |c|
	    c.login_field = :username
	    c.email_field = :email
	end
end
