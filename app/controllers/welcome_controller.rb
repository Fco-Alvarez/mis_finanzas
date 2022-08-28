class WelcomeController < ApplicationController
  def index
    @ingresos = Ingreso.all
    @egresos = Egreso.all
  end

  def new
    @ingreso = Ingreso.new
    @egreso = Egreso.new
  end


  def set_ingreso
    @ingreso = Ingreso.find(params[:id])
  end

  def set_egreso
    @egreso = Egreso.find(params[:id])
  end

  def ingreso_params
    params.require(:ingreso).permit(:fecha, :monto, :glosa, :categoriaingreso)
  end

  def egreso_params
    params.require(:egreso).permit(:fecha, :monto, :glosa, :categoriaegreso)
  end

end
