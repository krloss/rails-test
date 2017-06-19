class Escolha < ActiveRecord::Base
  belongs_to :questao
  attr_accessible :texto, :voto
end
