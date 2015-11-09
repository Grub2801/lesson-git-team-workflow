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
      redirect_to
    else
      render :new
    end
  end

  def update
    @actor  = actor.find(params[:id])
    if @actor.update(actor_params)
      redirect_to
    else
      render :edit
  end

  private
  def set_actor
    @actor = Actor.new(actor_params)
  end

  def actor_params
    params.require(:actor).permit(:name, :year_of_birth, :thumbnail)
  end

end
