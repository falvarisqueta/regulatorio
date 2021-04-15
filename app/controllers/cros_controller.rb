class CrosController < ApplicationController
  before_action :set_cro, only: %i[ show update destroy ]

  # GET /cros or /cros.json
  def index
    @cros = Cro.all
  end

  # GET /cros/1 or /cros/1.json
  def show
  end

  # GET /cros/new
  def new
    @cro = Cro.new
  end

  # POST /cros or /cros.json
  def create
    @cro = Cro.new(cro_params)

    respond_to do |format|
      if @cro.save
        format.html { redirect_to @cro, notice: "Cro was successfully created." }
        format.json { render :show, status: :created, location: @cro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cros/1 or /cros/1.json
  def update
    respond_to do |format|
      if @cro.update(cro_params)
        format.html { redirect_to @cro, notice: "Cro was successfully updated." }
        format.json { render :show, status: :ok, location: @cro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cros/1 or /cros/1.json
  def destroy
    @cro.destroy
    respond_to do |format|
      format.html { redirect_to cros_url, notice: "Cro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cro
      @cro = Cro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cro_params
      params.require(:cro).permit(:nombre)
    end
end
