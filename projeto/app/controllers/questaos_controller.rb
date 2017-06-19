class QuestaosController < ApplicationController
  # GET /questaos
  # GET /questaos.json
  def index
    @questaos = Questao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questaos }
    end
  end

  # GET /questaos/1
  # GET /questaos/1.json
  def show
    @questao = Questao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @questao }
    end
  end

  # GET /questaos/new
  # GET /questaos/new.json
  def new
    @questao = Questao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @questao }
    end
  end

  # GET /questaos/1/edit
  def edit
    @questao = Questao.find(params[:id])
  end

  # POST /questaos
  # POST /questaos.json
  def create
    @questao = Questao.new(params[:questao])

    respond_to do |format|
      if @questao.save
        format.html { redirect_to @questao, notice: 'Questao was successfully created.' }
        format.json { render json: @questao, status: :created, location: @questao }
      else
        format.html { render action: "new" }
        format.json { render json: @questao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questaos/1
  # PUT /questaos/1.json
  def update
    @questao = Questao.find(params[:id])

    respond_to do |format|
      if @questao.update_attributes(params[:questao])
        format.html { redirect_to @questao, notice: 'Questao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @questao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questaos/1
  # DELETE /questaos/1.json
  def destroy
    @questao = Questao.find(params[:id])
    @questao.destroy

    respond_to do |format|
      format.html { redirect_to questaos_url }
      format.json { head :no_content }
    end
  end
end
