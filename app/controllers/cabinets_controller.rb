class CabinetsController < ApplicationController
  before_action :set_cabinet, only: [:show, :edit, :update, :destroy]

  # GET /cabinets
  # GET /cabinets.json
  def index
    if params[:display_cabinet_archive]
      @cabinets = Cabinet.where(:archive => params[:display_cabinet_archive])
    else
      @cabinets = Cabinet.where(:archive => false)
    end
  end

  # GET /cabinets/1
  # GET /cabinets/1.json
  def show
  end

  # GET /cabinets/new
  def new
    @lieux = Lieu.all.map{|s|[s.nom, s.id]}
    @cabinet = Cabinet.new
  end

  # GET /cabinets/1/edit
  def edit
    @lieux = Lieu.all.map{|s|[s.nom, s.id]}
  end

  # POST /cabinets
  # POST /cabinets.json
  def create
    @cabinet = Cabinet.new(cabinet_params)

    respond_to do |format|
      if @cabinet.save
        format.html { redirect_to @cabinet, notice: 'Cabinet was successfully created.' }
        format.json { render :show, status: :created, location: @cabinet }
      else
        format.html { render :new }
        format.json { render json: @cabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cabinets/1
  # PATCH/PUT /cabinets/1.json
  def update
    respond_to do |format|
      if @cabinet.update(cabinet_params)
        format.html { redirect_to @cabinet, notice: 'Cabinet was successfully updated.' }
        format.json { render :show, status: :ok, location: @cabinet }
      else
        format.html { render :edit }
        format.json { render json: @cabinet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabinets/1
  # DELETE /cabinets/1.json
  def destroy
    @cabinet.destroy
    respond_to do |format|
      format.html { redirect_to cabinets_url, notice: 'Cabinet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabinet
      @cabinet = Cabinet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cabinet_params
      params.require(:cabinet).permit(:nom, :description, :archive, :lieu_id)
    end
end
