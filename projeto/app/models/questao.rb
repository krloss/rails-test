class Questao < ActiveRecord::Base
	attr_accessible :data, :texto

	validates :data, :presence=>true
	validates :texto, :presence=>true, :length=>{:minimum=>5}

	has_many :escolhas
end
