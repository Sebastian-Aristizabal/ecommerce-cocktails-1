class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cocktails = Cocktail.all
    @discounted_cocktails = Cocktail.where("discount > 0 AND status = ?", true)
  end
end
