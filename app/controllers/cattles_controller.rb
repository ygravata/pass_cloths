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
    @cattle_json = @cattle.only_one_owner.sample
    render json: {phrase: @cattle_json, count: @cattle_json.cattles_count}
  end

  def double
    @phrases = Phrase.two_owners
    render json: {phrase: @phrases.sample, count: @phrases.sample.cattles_count}
  end

  def destroy

  end

  private

  def set_cattle
    @cattle = Cattle.find(params[:id])
  end
end
