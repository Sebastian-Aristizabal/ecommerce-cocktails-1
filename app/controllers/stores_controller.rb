class StoresController < ApplicationController
  def index
    @stores = Store.where(user_id: current_user.id)
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    @store.user_id = current_user.id
    if @store.save
      redirect_to stores_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @stores = Store.where(user: current_user)
    @cocktails = Cocktail.where(store: @store)
  end

  def store_params
    params.require(:store).permit(:name, :address, :time_open, :time_close)
  end
end
