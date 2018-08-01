class FoundationsController < ApplicationController
      # Presentar lista general de fundaciones
  def index
    @Foundation = Foundation.all
  end
  # Presentar un articulo especifico
  def show
    @Foundation = Foundation.find(params[:id])
  end
 
   #Crear un articulo
   def new
    @Foundation = Foundation.new
   end

   def create
    @Foundation = Foundation.new(nombre:params[:foundation][:nombre],resumen:params[:foundation][:resumen],objeto:params[:foundation][:objeto],telefono:params[:foundation][:telefono],sitio_web:params[:foundation][:sitio_web])

    if @Foundation.save
        redirect_to @Foundation
    else
        render :new
    end
  end

  #Eliminar un articulo
  def destroy
    @Foundation = Foundation.find(params[:id])
    @Foundation.destroy
  redirect_to foundations_path
  end

   #Editar un articulo
   def edit 
    @Foundation = Foundation.find(params[:id])
    end
    
    def update
      @Foundation = Foundation.find(params[:id])
        if @Foundation.update(foundation_params)
          redirect_to @Foundation
        else
         render 'edit'
        end
    end

    private
    def foundation_params
      params.require(:foundation).permit(:nombre, :resumen, :objeto, :telefono, :sitio_web)
    end
   

end
