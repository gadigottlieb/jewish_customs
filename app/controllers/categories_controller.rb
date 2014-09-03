class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    # @test = Test.find(params[:test_id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to category_path(@category)
    else
      render :edit
    end
  end
  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to categories_path
    else
      redirect_to category_path
    end
  end

  def kosher
    @kosher = Category.find_by({title: "Kosher"})
  end

  private
  def category_params
    params.require(:category).permit(:title, :photo, :bible_quote, :bible_src, :plot, :customs, :date)
  end
end
