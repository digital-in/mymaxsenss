class AffectationsController < ApplicationController
  before_action :set_affectation, only: [:show, :edit, :update, :destroy]

  # GET /affectations
  # GET /affectations.json
  def index
    @Cabinets = Cabinet.all
    @Creneaux = Creneau.all
    if params[:datevisu] == ""
      params[:datevisu] = Date.today
    end
    if !params[:datevisudate]
      params[:datevisudate] = Date.today
    end
    if params[:datevisu]
      params[:datevisudate] = params[:datevisu]["datevisu"].to_time
    end
    @affectations = Affectation.where(['datefin >= ?', params[:datevisudate]])
    #@affectations = Affectation.all
  end

  # GET /affectations/1
  # GET /affectations/1.json
  def show
    @Cabinets = Cabinet.all
    @Creneaux = Creneau.all
  end

  # GET /affectations/new
  def new
    @Cabinets = Cabinet.all.map{|s|[s.nom, s.id]}
    @Creneaux = Creneau.all.map{|t|[t.txtjour, t.id]}
    @Praticiens = Praticien.where(:maxsenss => true).order("nom ASC").map{|u|[u.prenom + ' ' + u.nom, u.id]}
    @affectation = Affectation.new
  end

  # GET /affectations/1/edit
  def edit
    @Cabinets = Cabinet.all.map{|s|[s.nom, s.id]}
    @Creneaux = Creneau.all.map{|t|[t.txtjour, t.id]}
    @Praticiens = Praticien.all.map{|u|[u.prenom + ' ' + u.nom, u.id]}
  end

  # POST /affectations
  # POST /affectations.json
  def create
    @affectation = Affectation.new(affectation_params)

    respond_to do |format|
      if @affectation.save
        format.html { redirect_to @affectation, notice: 'Affectation was successfully created.' }
        format.json { render :show, status: :created, location: @affectation }
      else
        format.html { render :new }
        format.json { render json: @affectation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /affectations/1
  # PATCH/PUT /affectations/1.json
  def update
    respond_to do |format|
      if @affectation.update(affectation_params)
        format.html { redirect_to @affectation, notice: 'Affectation was successfully updated.' }
        format.json { render :show, status: :ok, location: @affectation }
      else
        format.html { render :edit }
        format.json { render json: @affectation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affectations/1
  # DELETE /affectations/1.json
  def destroy
    @affectation.destroy
    respond_to do |format|
      format.html { redirect_to affectations_url, notice: 'Affectation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affectation
      @affectation = Affectation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def affectation_params
      params.require(:affectation).permit(:cabinet_id, :creneau_id, :praticien_id, :datedebut, :datefin)
    end
end
