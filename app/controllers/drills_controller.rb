class DrillsController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @drill = @category.drills.new
  end

  def show
    @category = Category.find(params[:category_id])
    @drill = @category.drills.find(params[:id])
  end

  def create
    @category = Category.find(params[:category_id])
    @drill = @category.drills.create(create_drill)
    if @drill.save
      redirect_to category_path(@category), notice: "Drill created!"
    else
      render :new
    end
  end

  def edit
    @drill = Drill.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def update
    @drill = Drill.find(params[:id])
    @category = Category.find(params[:category_id])
    @drill.update(create_drill)
    if @drill.save
      redirect_to category_drill_path(@cateogry, @drill), notice: "Drill created!"
    else
      render :new
    end

  end

  def destroy
    @category = Category.find(params[:category_id])
    @drill = Drill.find(params[:id])
    @drill.destroy
    redirect_to category_path(@category), alert: "Drill deleted"
  end

  def add_workout
    @drill = Drill.find(params[:id])
    @category = @drill.category
    @drill.workouts.create(user: current_user)
    redirect_to category_path(@category)
  end

  def remove_workout
    @drill = Drill.find(params[:id])
    @category = @drill.category
    @drill.workouts.create(user: current_user)
    redirect_to category_path(@category)
  end


  private

  def create_drill
    params.require(:drill).permit(:name, :image_url, :description, :category_id)
  end

end
