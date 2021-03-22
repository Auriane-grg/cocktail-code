class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    authorize @ingredient
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    authorize @ingredient
    if @ingredient.save
      redirect_to request.referrer
    else 
      redirect_to request.referrer
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
