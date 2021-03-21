class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    authorize @ingredient
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    # @cocktail = Cocktail.find(params[:cocktail_id])
    # @ingredient.cocktail
    authorize @ingredient
    if @ingredient.save
      redirect_to request.referrer
    else 
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
