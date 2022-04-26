class ElectricsController < ApplicationController

  def index
    @electrics = Electric.all
    render "electrics/index"
  end
  
  def show
    @electric = Electric.find_by(id: params[:id])
    render "electrics/show"
  end

end
