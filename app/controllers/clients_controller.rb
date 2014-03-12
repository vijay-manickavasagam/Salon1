class ClientsController < ApplicationController


def show
end

  # def new
  #  @client = Client.new
  # end

  def create
    @client = Client.new(client_params)

    #new_client.first_name = params["first_name"]
    #new_client.last_name = params["last_name"]
    #new_client.sex = params["sex"]
    #new_client.image_url = params["image_url"]
    #new_client.date_of_birth = params["date_of_birth"]
    #new_client.email = params["email"]
    ##new_client.phone = params["phone"]
    client.save
    redirect_to "/clients/show"
  end

#   def index
#   @client = Client.all
#   end



# def edit
#   @client = Client.find(params[:id])
# end

# def update
#   @client = Client.find(params[:id])
#   if @client.update(params[:client].permit(:client_name, :owner_name, :contact_name, :phone, :address, :email))
#     redirect_to @client
#   else
#     render 'edit'
#   end
# #end

# def destroy
#   @client = Client.find(params[:id])
#   @client.destroy
#   redirect_to "/clients"
# end

# private
#   def client_params
#     params.require(:client).permit(:client_name, :owner_name, :contact_name, :phone, :address, :email)
#   end

# end

end