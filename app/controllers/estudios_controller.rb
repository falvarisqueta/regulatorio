class EstudiosController < ApplicationController
  before_action :set_estudio, only: %i[ show update destroy ]
  before_action :set_data, only: %i[ index new show create ]

  # GET /estudios or /estudios.json
  def index
    @nombre = params[:nombre]
    @estado =  params[:estado]
    @especialidad =  params[:especialidad_id]
    @laboratorio =  params[:laboratorio_id]
    @estudios = Estudio.filter(params.slice(:estado, :nombre, :laboratorio_id, :especialidad_id))
  end

  # GET /estudios/1 or /estudios/1.json
  def show
  end

  # GET /estudios/new
  def new
    @estudio = Estudio.new
  end

  # POST /estudios or /estudios.json
  def create
    @estudio = Estudio.new(estudio_params)

    respond_to do |format|
      if @estudio.save
        format.html { redirect_to @estudio, notice: "Estudio was successfully created." }
        format.json { render :show, status: :created, location: @estudio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudios/1 or /estudios/1.json
  def update
    respond_to do |format|
      if @estudio.update(estudio_params)
        format.html { redirect_to @estudio, notice: "Estudio was successfully updated." }
        format.json { render :show, status: :ok, location: @estudio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudios/1 or /estudios/1.json
  def destroy
    @estudio.destroy
    respond_to do |format|
      format.html { redirect_to estudios_url, notice: "Estudio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudio
      @estudio = Estudio.find(params[:id])
    end

    def set_data
      @especialidades = Especialidad.all
      @laboratorios = Laboratorio.all
      @estados = Estudio.estados
    end

    # Only allow a list of trusted parameters through.
    def estudio_params
      params.require(:estudio).permit(
        :nombre,
        :estado,
        :laboratorio_id,
        :especialidad_id,
        :fecha_ppi,
        :fecha_aprobacion_ppi,
        :fecha_envio_sponsor,
        :fecha_envio_ccis,
        :fecha_aprobacion_ccis,
        :fecha_envio_anmat,
        :fecha_aprobacion_anmat,
        :comentario)
    end
end
