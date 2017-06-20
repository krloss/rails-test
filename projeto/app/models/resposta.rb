class Resposta < ActiveRecord::Base
  belongs_to :questao
  attr_accessible :texto
end
