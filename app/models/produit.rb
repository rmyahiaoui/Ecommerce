class Produit < ActiveRecord::Base
	belongs_to :categori
	has_many :paniers 

validates :nom, :presence => true,
                :length => { :maximum => 50 }
validates :description, :presence => true,
                :length => { :maximum => 250 }
validates :photo, :length => { :maximum => 25 }
validates :prix, :presence => true
validates :categori_id, :presence => true
validates :quantite, :presence => true
end
