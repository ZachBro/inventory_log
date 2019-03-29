class InventoriesController < ApplicationController

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(invertory_params)
    if @inventory.save
      redirect_to "/"
    else
      redirect_to "/"
    end
  end

  def update
    @inventory = Inventory.find_by(id: "#{params[:id]}")
    @inventory.update(update_params)
    redirect_to "/"
  end

  private

    def invertory_params
      params.permit(:number, :employee_out_id)
    end

    def update_params
      params.require(:inventory).permit(:employee_in_id)
    end
end
