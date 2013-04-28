class User < ActiveRecord::Base
	
	has_many :commandes
	acts_as_authentic do |c|
	    c.login_field = :username
	    c.email_field = :email
	end

validates :username, :presence => true,
                :length => { :maximum => 50 }
email_exp = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, :presence => true,
                :length => { :maximum => 100 },
                :format => { :with => email_exp },
                :uniqueness => { :case_sensitive => false }
validates :adress, :presence => true,
                :length => { :maximum => 80 }
validates :code_postal, :presence => true,
                :numericality => { :greater_than => 999, :less_than => 100000 }
validates :ville, :presence => true,
                :length => { :maximum => 50 }
validates :pay, :presence => true,
                :length => { :maximum => 50 }

end
