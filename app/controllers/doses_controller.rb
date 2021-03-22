class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    authorize @dose
  end

  def create
    @dose = Dose.new(dose_params)
    authorize @dose
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to request.referrer
    else 
      redirect_to request.referrer
    end
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(dose_params)

    redirect_to dose_path(@dose)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:quantity, :ingredient_id)
  end
end
