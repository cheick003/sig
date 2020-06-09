class EtatcivilsController < ApplicationController
  before_action :set_etatcivil, only: [:show, :edit, :update, :destroy]

  # GET /etatcivils
  # GET /etatcivils.json
  def index
    @etatcivils = Etatcivil.all
  end

  def etatcivil_edit
    @etatcivils = Etatcivil.all
  end

  def etatcivil_delete
    @etatcivils = Etatcivil.all
  end

  # GET /etatcivils/1
  # GET /etatcivils/1.json
  def show
  end

  # GET /etatcivils/new
  def new
    @etatcivil = Etatcivil.new
  end

  # GET /etatcivils/1/edit
  def edit
  end

  # POST /etatcivils
  # POST /etatcivils.json
  def create
    @etatcivil = Etatcivil.new(etatcivil_params)

    respond_to do |format|
      if @etatcivil.save
        format.html { redirect_to @etatcivil, notice: 'Etatcivil was successfully created.' }
        format.json { render :show, status: :created, location: @etatcivil }
      else
        format.html { render :new }
        format.json { render json: @etatcivil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etatcivils/1
  # PATCH/PUT /etatcivils/1.json
  def update
    respond_to do |format|
      if @etatcivil.update(etatcivil_params)
        format.html { redirect_to @etatcivil, notice: 'Etatcivil was successfully updated.' }
        format.json { render :show, status: :ok, location: @etatcivil }
      else
        format.html { render :edit }
        format.json { render json: @etatcivil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etatcivils/1
  # DELETE /etatcivils/1.json
  def destroy
    @etatcivil.destroy
    respond_to do |format|
      format.html { redirect_to etatcivils_url, notice: 'Etatcivil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etatcivil
      @etatcivil = Etatcivil.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def etatcivil_params
      params.require(:etatcivil).permit(:etatcivil)
    end
end
