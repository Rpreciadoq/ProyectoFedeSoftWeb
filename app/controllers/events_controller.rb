class EventsController < ApplicationController
    # Presentar lista general de fundaciones
  def index
    @Event = Event.all
  end
  # Presentar un articulo especifico
  def show
    @Event = Event.find(params[:id])
  end

    #Crear un articulo
    def new
        @Event = Event.new
       end
    
       def create
        @Event = Event.new(nombre:params[:event][:nombre],lugar:params[:event][:lugar],fecha:params[:event][:fecha],participantes:params[:event][:participantes])
    
        if @Event.save
            redirect_to @Event
        else
            render :new
        end
      end

       #Eliminar un articulo
  def destroy
    @Event = Event.find(params[:id])
    @Event.destroy
  redirect_to events_path
  end
    
   #Editar un articulo
   def edit 
    @Event = Event.find(params[:id])
    end
    
    def update
      @Event = Event.find(params[:id])
        if @Event.update(event_params)
          redirect_to @Event
        else
         render 'edit'
        end
    end

    private
    def event_params
      params.require(:event).permit(:nombre, :lugar, :fecha, :participantes)
    end
end
