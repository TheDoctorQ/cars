class ElectricsController < ApplicationController

  def index
    @electrics = Electric.all
    render "electrics/index"
  end
  
  def show
    @electric = Electric.find_by(id: params[:id])
    render "electrics/show"
  end

  def new
    render "electrics/new" 
  end

  def create
    electric = Electric.new(
      name: params[:name],
      color: params[:color],
      manufacturer: params[:manufacturer],
      year: params[:year],
    )
    electric.save
    redirect_to "/electrics/#{electric.id}"
  end

end
