class SalonsController < ApplicationController

  def new
    @salon = Salon.new
  end

 def create
  @salon = Salon.new(salon_params)
  @salon.save
  redirect_to @salon

    # linha que preciso digitar para inculir a valiadacao direito
    # if @salon.save
    #       redirect_to @salon
    # else
    #       render "new"
    # end
 end

def index
  @salon = Salon.all
end

def show
  @salon=Salon.find(params[:id])
end

def edit
  @salon = Salon.find(params[:id])
end

def update
  @salon = Salon.find(params[:id])
  if @salon.update(params[:salon].permit(:salon_name, :owner_name, :contact_name, :phone, :address, :email))
    redirect_to @salon
  else
    render 'edit'
  end
end

def destroy
  @salon = Salon.find(params[:id])
  @salon.destroy
  redirect_to "/salons"
end

private
  def salon_params
    params.require(:salon).permit(:salon_name, :owner_name, :contact_name, :phone, :address, :email)
  end

end

