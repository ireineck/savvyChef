class CategoryController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categorys = Category.all
  end

  def new
    @category = Category.new
  end
  
  def create
      @Category = Category.new(special_params)
      
      respond_to do |format|
          if @category.save
              format.html { redirect_to @category, notice: 'Category was successfully created.' }
              format.json { render :show, status: :created, location: @special }
              else
              format.html { render :new }
              format.json { render json: @category.errors, status: :unprocessable_entity }
          end
      end
  end
  
  def update
      respond_to do |format|
          if @category.update(special_params)
              format.html { redirect_to @category, notice: 'Category was successfully updated.' }
              format.json { render :show, status: :ok, location: @category }
              else
              format.html { render :edit }
              format.json { render json: @category.errors, status: :unprocessable_entity }
          end
      end
  end

   def destroy
     @category.destroy
     
     respond_to do |format|
        format.html { redirect_to category_index_path, notice: 'Category was successfully destroyed.' }
        format.json { head :no_content }
      end
   end
  
  def set_category
      @category = Category.find(params[:id])
  end

  def special_params
      params.require(:category).permit(:name)
  end

end
