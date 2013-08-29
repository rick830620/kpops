class KpopsController < ApplicationController
  before_action :set_kpop, only: [:show, :edit, :update, :destroy]

  # GET /kpops
  # GET /kpops.json
  def index
    @kpops = Kpop.all
    @number = @kpops.size
  end

  # GET /kpops/1
  # GET /kpops/1.json
  def show
  end

  # GET /kpops/new
  def new
    @kpop = Kpop.new
  end

  # GET /kpops/1/edit
  def edit
  end

  # POST /kpops
  # POST /kpops.json
  def create
    @kpop = Kpop.new(kpop_params)

    respond_to do |format|
      if @kpop.save
        format.html { redirect_to @kpop, notice: 'Kpop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kpop }
      else
        format.html { render action: 'new' }
        format.json { render json: @kpop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kpops/1
  # PATCH/PUT /kpops/1.json
  def update
    respond_to do |format|
      if @kpop.update(kpop_params)
        format.html { redirect_to @kpop, notice: 'Kpop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kpop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kpops/1
  # DELETE /kpops/1.json
  def destroy
    @kpop.destroy
    respond_to do |format|
      format.html { redirect_to kpops_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kpop
      @kpop = Kpop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kpop_params
      params.require(:kpop).permit(:group, :leader, :birth, :member, :famous, :exist)
    end
end
