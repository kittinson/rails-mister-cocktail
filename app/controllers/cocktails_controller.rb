class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
     @cocktail = Cocktail.new(cocktail)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find[params[:id]]
    @cocktail.destroy
  end

  private

  def coctails_params
    params.require(:cocktail).permit(:name)
  end

end
