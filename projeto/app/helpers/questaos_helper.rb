module QuestaosHelper
	def join_respostas(questao)
		questao.respostas.map{|it| it.texto}.join(", ")
	end
end
