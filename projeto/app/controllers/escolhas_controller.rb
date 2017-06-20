class EscolhasController < ApplicationController
	def create
		@questao = Questao.find(params[:questao_id])
		@escolha = @questao.escolhas.create(params[:escolha])

		redirect_to questao_path(@questao)
	end

	def destroy
		@questao = Questao.find(params[:questao_id])
		@escolha = @questao.escolhas.find(params[:id])
		@escolha.destroy
		redirect_to questao_path(@questao)
	end
end
