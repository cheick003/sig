class PersonnelsController < ApplicationController
  before_action :set_personnel, only: [:show, :edit, :update, :destroy]

  # GET /personnels
  # GET /personnels.json
  def index
    @personnels = Personnel.all
    @personnels_rectorat = Personnel.where(structure: '1')
    @personnels_fdpri = Personnel.where(structure: '2')
    @personnels_fdpu = Personnel.where(structure: '3')
    @personnels_fsap = Personnel.where(structure: '4')
  end

  def personnel_edit
    @personnels = Personnel.all
    @personnels_rectorat = Personnel.where(structure: '1')
    @personnels_fdpri = Personnel.where(structure: '2')
    @personnels_fdpu = Personnel.where(structure: '3')
    @personnels_fsap = Personnel.where(structure: '4')
  end

  def personnel_delete
    @personnels = Personnel.all
    @personnels_rectorat = Personnel.where(structure: '1')
    @personnels_fdpri = Personnel.where(structure: '2')
    @personnels_fdpu = Personnel.where(structure: '3')
    @personnels_fsap = Personnel.where(structure: '4')
  end

  # GET /personnels/1
  # GET /personnels/1.json
  def show
  end

  # GET /personnels/new
  def new
    @personnel = Personnel.new
  end

  # GET /personnels/1/edit
  def edit
  end

  # POST /personnels
  # POST /personnels.json
  def create
    @personnel = Personnel.new(personnel_params)

    respond_to do |format|
      if @personnel.save
        format.html { redirect_to @personnel, notice: 'Personnel was successfully created.' }
        format.json { render :show, status: :created, location: @personnel }
      else
        format.html { render :new }
        format.json { render json: @personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personnels/1
  # PATCH/PUT /personnels/1.json
  def update
    respond_to do |format|
      if @personnel.update(personnel_params)
        format.html { redirect_to @personnel, notice: 'Personnel was successfully updated.' }
        format.json { render :show, status: :ok, location: @personnel }
      else
        format.html { render :edit }
        format.json { render json: @personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnels/1
  # DELETE /personnels/1.json
  def destroy
    @personnel.destroy
    respond_to do |format|
      format.html { redirect_to personnels_url, notice: 'Personnel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personnel
      @personnel = Personnel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personnel_params
      params.require(:personnel).permit(:nummatricule, :prenom, :nom, :datenaissance, :lieunaissance, :telephone, :genre_id, :structure_id, :service_id, :cadre_id, :corp_id, :titre_id, :statut_id, :etatcivil_id)
    end
end
