class CattlesController < ApplicationController
  before_action :set_cattle, only: [:show]
  def index
   @bolsominion = Cattle.find_by(cattle_name:"Bolsominion")
   @petista = Cattle.find_by(cattle_name:"Petista")
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def show
    render json: @cattle.phrases.sample
  end

  def destroy

  end

  private

  def set_cattle
    @cattle = Cattle.find(params[:id])
  end
end
