class Categori < ActiveRecord::Base
has_many :produits

validates :nom, :presence => true,
                :length => { :maximum => 50 }
validates :description, :presence => true,
                :length => { :maximum => 250 }
end
