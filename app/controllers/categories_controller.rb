class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(create_category)
    if @category.save
      redirect_to @category, notice: "Category created!"
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(create_category)
    if @category.save
      redirect_to @category, notice: "Category created!"
    else
      render :new
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def create_category
    params.require(:category).permit(:name, :image_url)
  end

end
