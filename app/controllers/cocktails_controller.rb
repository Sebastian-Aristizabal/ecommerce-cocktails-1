class CocktailsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show ]
  before_action :find_cocktail, only: %i[destroy show edit update]

  def index
    # a way to find cocktails by current user
    user = User.find(current_user.id)
    @cocktails = user.stores.map(&:cocktails).flatten
  end

  def new
    @cocktail = Cocktail.new
    @store = Store.find(params[:store_id])
    @cocktail.store_id = @store.id
  end

  def show

  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @store = Store.find(params[:store_id])
    @cocktail.store_id = @store.id
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: 'Cocktail was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path, status: :see_other
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :ml, :ingredients, :description, :price, :status, :discount, :photo, :category_id, :store_id)
  end
end
