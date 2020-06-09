class ComptepersonnelsController < ApplicationController
  before_action :set_comptepersonnel, only: [:show, :edit, :update, :destroy]

  # GET /comptepersonnels
  # GET /comptepersonnels.json
  def index
    @comptepersonnels = Comptepersonnel.all
  end

  def comptepersonnel_edit
    @comptepersonnels = Comptepersonnel.all
  end

  def comptepersonnel_delete
    @comptepersonnels = Comptepersonnel.all
  end

  # GET /comptepersonnels/1
  # GET /comptepersonnels/1.json
  def show
  end

  # GET /comptepersonnels/new
  def new
    @comptepersonnel = Comptepersonnel.new
  end

  # GET /comptepersonnels/1/edit
  def edit
  end

  # POST /comptepersonnels
  # POST /comptepersonnels.json
  def create
    @comptepersonnel = Comptepersonnel.new(comptepersonnel_params)

    respond_to do |format|
      if @comptepersonnel.save
        format.html { redirect_to @comptepersonnel, notice: 'Comptepersonnel was successfully created.' }
        format.json { render :show, status: :created, location: @comptepersonnel }
      else
        format.html { render :new }
        format.json { render json: @comptepersonnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comptepersonnels/1
  # PATCH/PUT /comptepersonnels/1.json
  def update
    respond_to do |format|
      if @comptepersonnel.update(comptepersonnel_params)
        format.html { redirect_to @comptepersonnel, notice: 'Comptepersonnel was successfully updated.' }
        format.json { render :show, status: :ok, location: @comptepersonnel }
      else
        format.html { render :edit }
        format.json { render json: @comptepersonnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comptepersonnels/1
  # DELETE /comptepersonnels/1.json
  def destroy
    @comptepersonnel.destroy
    respond_to do |format|
      format.html { redirect_to comptepersonnels_url, notice: 'Comptepersonnel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comptepersonnel
      @comptepersonnel = Comptepersonnel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comptepersonnel_params
      params.require(:comptepersonnel).permit(:compte_id, :personnel_id, :main)
    end
end
