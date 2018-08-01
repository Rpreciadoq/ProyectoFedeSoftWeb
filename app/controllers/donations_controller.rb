class DonationsController < ApplicationController

     # Presentar lista general de fundaciones
  def index
    @Donation = Donation.all
  end
  # Presentar un articulo especifico
  def show
    @Donation = Donation.find(params[:id])
  end

  #Crear un articulo
  def new
    @Donation = Donation.new
   end

   def create
    @Donation = Donation.new(cuenta:params[:donation][:cuenta],banco:params[:donation][:banco],detalle:params[:donation][:detalle])

    if @Donation.save
        redirect_to @Donation
    else
        render :new
    end
  end

  #Eliminar un articulo
  def destroy
    @Donation = Donation.find(params[:id])
    @Donation.destroy
  redirect_to donations_path
  end

  #Editar un articulo
  def edit 
    @Donation = Donation.find(params[:id])
    end
    
    def update
      @Donation = Donation.find(params[:id])
        if @Donation.update(donation_params)
          redirect_to @Donation
        else
         render 'edit'
        end
    end

    private
    def donation_params
      params.require(:donation).permit(:cuenta, :banco, :detalle)
    end
end
