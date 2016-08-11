class WorkoutsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    # @drill = Drill.find(params[:id])
    # @drill.workouts.create(user_id: @current_user.id)
    @workout = Workout.create(workout_params)
    redirect_to @current_user
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.update(workout_params)
    redirect_to @current_user
  end

  private
  def workout_params
    params.require(:workout).permit(:user_id, :drill_id, :comment)
  end

end
