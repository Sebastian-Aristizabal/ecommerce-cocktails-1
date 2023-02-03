class CocktailsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show ]
  before_action :find_cocktail, only: %i[destroy show edit update]

  def index
    # if params[:category_id]
    #   @category = Category.find(params[:category_id])
    #   if @category.name == "aperitivos"
    #     @cocktails = Cocktail.where(category_id: @category.id)
    #   elsif @category.name == "refrescantes"
    #     @cocktails = Cocktail.where(category_id: @category.id)
    #   elsif @category.name == "digestivos"
    #     @cocktails = Cocktail.where(category_id: @category.id)
    #   end
    # elsif params[:user_id]
    #   @cocktails = Cocktail.where(user_id: params[:user_id])
    # elsif params[:query]
    #   @cocktails = Cocktail.search(params[:query])
    # else
    #   @cocktails = Cocktail.all
    # end
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show

  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.user_id = current_user.id
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  # end

  # def update
  #   @cocktail.update(cocktail_params)
  #   redirect_to cocktail_path(@cocktail)
  # end

  # def destroy
  #   @cocktail.destroy
  #   redirect_to cocktails_path, status: :see_other
  # end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :address, :time_open, :time_close, :description, :category_id, :photo)
  end
end