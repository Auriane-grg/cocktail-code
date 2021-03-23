class InstructionsController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @instruction = Instruction.new
    authorize @instruction
  end

  def create
    @instruction = Instruction.new(instruction_params)
    authorize @instruction
    @cocktail = Cocktail.find(params[:cocktail_id])
    @instruction.cocktail = @cocktail
    if @instruction.save
      redirect_to request.referrer
    else 
      redirect_to request.referrer
    end
  end

  def edit
    @instruction = Instruction.find(params[:id])
  end

  def update
    @instruction = Instruction.find(params[:id])
    @instruction.update(instruction_params)

    redirect_to cocktails_path(@cocktail)
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    authorize @instruction
    @cocktail = @instruction.cocktail
    @instruction.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def instruction_params
    params.require(:instruction).permit(:quantity, :ingredient_id, :cocktail_id)
  end
end
