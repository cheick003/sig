class TitresController < ApplicationController
  before_action :set_titre, only: [:show, :edit, :update, :destroy]

  # GET /titres
  # GET /titres.json
  def index
    @titres = Titre.all
  end

  def titre_edit
    @titres = Titre.all
  end

  def titre_delete
    @titres = Titre.all
  end

  # GET /titres/1
  # GET /titres/1.json
  def show
  end

  # GET /titres/new
  def new
    @titre = Titre.new
  end

  # GET /titres/1/edit
  def edit
  end

  # POST /titres
  # POST /titres.json
  def create
    @titre = Titre.new(titre_params)

    respond_to do |format|
      if @titre.save
        format.html { redirect_to @titre, notice: 'Titre was successfully created.' }
        format.json { render :show, status: :created, location: @titre }
      else
        format.html { render :new }
        format.json { render json: @titre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titres/1
  # PATCH/PUT /titres/1.json
  def update
    respond_to do |format|
      if @titre.update(titre_params)
        format.html { redirect_to @titre, notice: 'Titre was successfully updated.' }
        format.json { render :show, status: :ok, location: @titre }
      else
        format.html { render :edit }
        format.json { render json: @titre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titres/1
  # DELETE /titres/1.json
  def destroy
    @titre.destroy
    respond_to do |format|
      format.html { redirect_to titres_url, notice: 'Titre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titre
      @titre = Titre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def titre_params
      params.require(:titre).permit(:titre)
    end
end
