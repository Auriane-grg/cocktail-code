class IngredientsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

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
      flash.now[:alert] = 'There was a problem adding this ingredient'
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
