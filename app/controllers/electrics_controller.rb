class ElectricsController < ApplicationController

  def index
    @electrics = Electric.all
    render "electrics/index"
  end
  
end
