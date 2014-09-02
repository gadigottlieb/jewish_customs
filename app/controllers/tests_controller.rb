class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.create(test_params)
    if @test.save
      redirect_to test_path(@test)
    else
      render :new
    end
  end

  def show
    @test = Test.find(params[:id])
  end

  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])
    if @test.update(test_params)
      redirect_to test_path(@test)
    else
      render :edit
    end
  end

  def destroy
    @test = Test.find(params[:id])
    if @test.destroy
      redirect_to tests_path
    else
      redirect_to test_path
    end
  end

  private
  def test_params
    params.require(:test).permit(:title)
  end
end
