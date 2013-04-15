class Commande < ActiveRecord::Base
	belongs_to :user
	belongs_to :produit

	def all_by_payer
		
			
	end
end

