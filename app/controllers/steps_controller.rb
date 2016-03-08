class StepsController < ApplicationController

  def index
    @steps = Step.all
  end

  def show
    set_step
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    if @step.save
      redirect_to steps_path
    else
      render "new"
    end
  end

  def destroy
    @step = Step.find(params[:id])
    @step.destroy
    render text: "Successfully deleted step count!", status: 200
  end

  private

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:count, :date, :user_id)
  end

end
