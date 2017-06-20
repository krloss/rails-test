class Questao < ActiveRecord::Base
	attr_accessible :data,:texto,:respostas_attributes

	validates :data, :presence=>true
	validates :texto, :presence=>true, :length=>{:minimum=>5}

	has_many :escolhas, :dependent=>:destroy
	has_many :respostas

	accepts_nested_attributes_for :respostas, :allow_destroy=>:true,
		:reject_if=>proc {|attrs| attrs.all?{|k,v| v.blank?}}
end
