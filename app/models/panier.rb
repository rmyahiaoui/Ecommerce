class Panier < ActiveRecord::Base
	belongs_to :produit
	belongs_to :user
end
