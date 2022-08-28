class CategoriaegresosController < ApplicationController
  before_action :set_categoriaegreso, only: %i[ show edit update destroy ]

  # GET /categoriaegresos or /categoriaegresos.json
  def index
    @categoriaegresos = Categoriaegreso.all
  end

  # GET /categoriaegresos/1 or /categoriaegresos/1.json
  def show
  end

  # GET /categoriaegresos/new
  def new
    @categoriaegreso = Categoriaegreso.new
  end

  # GET /categoriaegresos/1/edit
  def edit
  end

  # POST /categoriaegresos or /categoriaegresos.json
  def create
    @categoriaegreso = Categoriaegreso.new(categoriaegreso_params)

    respond_to do |format|
      if @categoriaegreso.save
        format.html { redirect_to categoriaegreso_url(@categoriaegreso), notice: "Categoriaegreso was successfully created." }
        format.json { render :show, status: :created, location: @categoriaegreso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoriaegreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoriaegresos/1 or /categoriaegresos/1.json
  def update
    respond_to do |format|
      if @categoriaegreso.update(categoriaegreso_params)
        format.html { redirect_to categoriaegreso_url(@categoriaegreso), notice: "Categoriaegreso was successfully updated." }
        format.json { render :show, status: :ok, location: @categoriaegreso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoriaegreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoriaegresos/1 or /categoriaegresos/1.json
  def destroy
    @categoriaegreso.destroy

    respond_to do |format|
      format.html { redirect_to categoriaegresos_url, notice: "Categoriaegreso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoriaegreso
      @categoriaegreso = Categoriaegreso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoriaegreso_params
      params.require(:categoriaegreso).permit(:categoria, :icono)
    end
end
