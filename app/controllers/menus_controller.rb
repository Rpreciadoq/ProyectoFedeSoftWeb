class MenusController < ApplicationController
     # Presentar lista general de fundaciones
  def index
    @Menu = Menu.all
  end
  # Presentar un articulo especifico
  def show
    @Menu = Menu.find(params[:id])
  end
 #Crear un articulo
 def new
    @Menu = Menu.new
   end

   def create
    @Menu = Menu.new(nombre:params[:menu][:nombre],enlace:params[:menu][:enlace])

    if @Menu.save
        redirect_to @Menu
    else
        render :new
    end
  end

  #Eliminar un articulo
  def destroy
    @Menu = Menu.find(params[:id])
    @Menu.destroy
  redirect_to menus_path
  end

  #Editar un articulo
  def edit 
    @Menu = Menu.find(params[:id])
    end
    
    def update
      @Menu = Menu.find(params[:id])
        if @Menu.update(menu_params)
          redirect_to @Menu
        else
         render 'edit'
        end
    end

    private
    def menu_params
      params.require(:menu).permit(:nombre, :enlace)
    end
   
end
