class EspecialidadsController < ApplicationController
  before_action :set_especialidad, only: %i[ show update destroy ]

  # GET /especialidads or /especialidads.json
  def index
    @especialidads = Especialidad.all
  end

  # GET /especialidads/1 or /especialidads/1.json
  def show
  end

  # GET /especialidads/new
  def new
    @especialidad = Especialidad.new
  end

  # POST /especialidads or /especialidads.json
  def create
    @especialidad = Especialidad.new(especialidad_params)

    respond_to do |format|
      if @especialidad.save
        format.html { redirect_to @especialidad, notice: "Especialidad was successfully created." }
        format.json { render :show, status: :created, location: @especialidad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especialidads/1 or /especialidads/1.json
  def update
    respond_to do |format|
      if @especialidad.update(especialidad_params)
        format.html { redirect_to @especialidad, notice: "Especialidad was successfully updated." }
        format.json { render :show, status: :ok, location: @especialidad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @especialidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especialidads/1 or /especialidads/1.json
  def destroy
    @especialidad.destroy
    respond_to do |format|
      format.html { redirect_to especialidads_url, notice: "Especialidad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especialidad
      @especialidad = Especialidad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def especialidad_params
      params.require(:especialidad).permit(:nombre)
    end
end
