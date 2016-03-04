class StepsController < ApplicationController

  def index
    @steps = Step.all
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
  end

  private

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:count, :date, :user_id)
  end

end
