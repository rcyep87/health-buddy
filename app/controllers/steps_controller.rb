class StepsController < ApplicationController
before_action :set_step, only: [:show, :destroy]

  def index
    @steps = Step.all
  end

  def show
  end

  def new
    @step = Step.new
    @step.user = current_user
  end

  def create
    @step = Step.new(step_params)
    @step.set_user!(current_user)
    
    if @step.save
      redirect_to steps_path
    else
      render "new"
    end
  end

  def destroy
    if @step.destroy
      render text: "Successfully deleted step count!", status: 200
    end
  end

  private

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:count, :date, :user_id)
  end

end
