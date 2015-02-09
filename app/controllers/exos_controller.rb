class ExosController < ApplicationController
  before_action :set_exo, only: [:show, :edit, :update, :destroy]

  def import
    @trainerone = Trainerone.find(params[:trainerone_id])

    Trainerone.import(params[:file], @trainerone.id)
    redirect_to @trainerone, notice: "Import Success."
  end

  # GET /exos
  # GET /exos.json
  def index
    @exos = Exo.all
  end

  # GET /exos/1
  # GET /exos/1.json
  def show
  end

  # GET /exos/new
  def new
    @exo = Exo.new
  end

  # GET /exos/1/edit
  def edit
  end

  # POST /exos
  # POST /exos.json
  def create
    @exo = Exo.new(exo_params)

    respond_to do |format|
      if @exo.save
        format.html { redirect_to @exo, notice: 'Exo was successfully created.' }
        format.json { render :show, status: :created, location: @exo }
      else
        format.html { render :new }
        format.json { render json: @exo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exos/1
  # PATCH/PUT /exos/1.json
  def update
    respond_to do |format|
      if @exo.update(exo_params)
        format.html { redirect_to @exo, notice: 'Exo was successfully updated.' }
        format.json { render :show, status: :ok, location: @exo }
      else
        format.html { render :edit }
        format.json { render json: @exo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exos/1
  # DELETE /exos/1.json
  def destroy
    @exo.destroy
    respond_to do |format|
      format.html { redirect_to exos_url, notice: 'Exo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exo
      @exo = Exo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exo_params
      params.require(:exo).permit(:PrdName, :OwnerName)
    end
end
