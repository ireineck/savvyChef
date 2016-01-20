class CategoryController < ApplicationController

  def index
    #    @specials = Special.all
    #    @specials = @category.specials
    @categorys = Category.all
  end

  








end
