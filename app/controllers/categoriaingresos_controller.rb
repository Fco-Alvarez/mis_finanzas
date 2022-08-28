class CategoriaingresosController < ApplicationController
  before_action :set_categoriaingreso, only: %i[ show edit update destroy ]

  # GET /categoriaingresos or /categoriaingresos.json
  def index
    @categoriaingresos = Categoriaingreso.all
  end

  # GET /categoriaingresos/1 or /categoriaingresos/1.json
  def show
  end

  # GET /categoriaingresos/new
  def new
    @categoriaingreso = Categoriaingreso.new
  end

  # GET /categoriaingresos/1/edit
  def edit
  end

  # POST /categoriaingresos or /categoriaingresos.json
  def create
    @categoriaingreso = Categoriaingreso.new(categoriaingreso_params)

    respond_to do |format|
      if @categoriaingreso.save
        format.html { redirect_to categoriaingreso_url(@categoriaingreso), notice: "Categoriaingreso was successfully created." }
        format.json { render :show, status: :created, location: @categoriaingreso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoriaingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoriaingresos/1 or /categoriaingresos/1.json
  def update
    respond_to do |format|
      if @categoriaingreso.update(categoriaingreso_params)
        format.html { redirect_to categoriaingreso_url(@categoriaingreso), notice: "Categoriaingreso was successfully updated." }
        format.json { render :show, status: :ok, location: @categoriaingreso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoriaingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoriaingresos/1 or /categoriaingresos/1.json
  def destroy
    @categoriaingreso.destroy

    respond_to do |format|
      format.html { redirect_to categoriaingresos_url, notice: "Categoriaingreso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoriaingreso
      @categoriaingreso = Categoriaingreso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoriaingreso_params
      params.require(:categoriaingreso).permit(:categoria)
    end
end
