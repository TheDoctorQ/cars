class HybridsController < ApplicationController
  before_action :set_hybrid, only: %i[ show edit update destroy ]

  # GET /hybrids or /hybrids.json
  def index
    @hybrids = Hybrid.all
  end

  # GET /hybrids/1 or /hybrids/1.json
  def show
  end

  # GET /hybrids/new
  def new
    @hybrid = Hybrid.new
  end

  # GET /hybrids/1/edit
  def edit
  end

  # POST /hybrids or /hybrids.json
  def create
    @hybrid = Hybrid.new(hybrid_params)

    respond_to do |format|
      if @hybrid.save
        format.html { redirect_to hybrid_url(@hybrid), notice: "Hybrid was successfully created." }
        format.json { render :show, status: :created, location: @hybrid }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hybrid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hybrids/1 or /hybrids/1.json
  def update
    respond_to do |format|
      if @hybrid.update(hybrid_params)
        format.html { redirect_to hybrid_url(@hybrid), notice: "Hybrid was successfully updated." }
        format.json { render :show, status: :ok, location: @hybrid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hybrid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hybrids/1 or /hybrids/1.json
  def destroy
    @hybrid.destroy

    respond_to do |format|
      format.html { redirect_to hybrids_url, notice: "Hybrid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hybrid
      @hybrid = Hybrid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hybrid_params
      params.require(:hybrid).permit(:name, :color)
    end
end
