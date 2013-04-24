class Produit < ActiveRecord::Base
	belongs_to :categori
	has_many :paniers 
end
