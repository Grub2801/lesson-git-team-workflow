class ActorsController < ApplicationController
  before_action :set_actor

  def show
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save

      redirect_to actor_path(@actor.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @actor.update(actor_params)
      redirect_to actor_path(@actor.id)
    else
      render :edit
  end

  private
  def set_actor
    @actor = Actor.find(params[:id])
  end

  def actor_params
    params.require(:actor).permit(:name, :year_of_birth, :thumbnail)
  end

end
