class SalonsController < ApplicationController
  def new
  end

  def create
  @salon = Salon.new(salon_params)
  @salon.save
  redirect_to @salon
  end

private
  def salon_params
    params.require(:salon).permit(:salon_name, :owner_name, :contact_name, :phone, :address, :email)
  end

 #salon GET    /salon/:id(.:format)      salon#show

def show
  @salon = Salon.find(params[:id])
end

end
