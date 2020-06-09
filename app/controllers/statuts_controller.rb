class StatutsController < ApplicationController
  before_action :set_statut, only: [:show, :edit, :update, :destroy]

  # GET /statuts
  # GET /statuts.json
  def index
    @statuts = Statut.all
  end

  def statut_edit
    @statuts = Statut.all
  end

  def statut_delete
    @statuts = Statut.all
  end

  # GET /statuts/1
  # GET /statuts/1.json
  def show
  end

  # GET /statuts/new
  def new
    @statut = Statut.new
  end

  # GET /statuts/1/edit
  def edit
  end

  # POST /statuts
  # POST /statuts.json
  def create
    @statut = Statut.new(statut_params)

    respond_to do |format|
      if @statut.save
        format.html { redirect_to @statut, notice: 'Statut was successfully created.' }
        format.json { render :show, status: :created, location: @statut }
      else
        format.html { render :new }
        format.json { render json: @statut.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statuts/1
  # PATCH/PUT /statuts/1.json
  def update
    respond_to do |format|
      if @statut.update(statut_params)
        format.html { redirect_to @statut, notice: 'Statut was successfully updated.' }
        format.json { render :show, status: :ok, location: @statut }
      else
        format.html { render :edit }
        format.json { render json: @statut.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statuts/1
  # DELETE /statuts/1.json
  def destroy
    @statut.destroy
    respond_to do |format|
      format.html { redirect_to statuts_url, notice: 'Statut was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statut
      @statut = Statut.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def statut_params
      params.require(:statut).permit(:statut)
    end
end
