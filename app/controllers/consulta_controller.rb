class ConsultaController < ApplicationController
  before_action :set_consultum, only: %i[ show update destroy leer ]

  # GET /consulta/1 or /consulta/1.json
  def show
  end

  # GET /consulta/new
  def new
    @consultum = Consultum.new
    @consultum.estudio_id = params[:estudio_id]
  end

  # POST /consulta or /consulta.json
  def create
    @consultum = Consultum.new(consultum_params)

    respond_to do |format|
      if @consultum.save
        format.html { redirect_to estudio_path(@consultum.estudio), notice: "Consulta creada." }
        format.json { render :show, status: :created, location: @consultum.estudio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulta/1 or /consulta/1.json
  def update
    respond_to do |format|
      if @consultum.update(consultum_params)
        format.html { redirect_to estudio_path(@consultum.estudio), notice: "Consulta actualizada." }
        format.json { render :show, status: :ok, location: @consultum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultum.errors, status: :unprocessable_entity }
      end
    end
  end

  def leer
    @consultum.update(leido: true)
    redirect_to estudio_path(@consultum.estudio), notice: "Consulta leida."
  end

  # DELETE /consulta/1 or /consulta/1.json
  def destroy
    @consultum.destroy
    respond_to do |format|
      format.html { redirect_to consulta_url, notice: "Consultum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultum
      @consultum = Consultum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultum_params
      params.require(:consultum).permit(:estudio_id, :asunto, :texto, :leido)
    end
end
