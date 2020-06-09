class TypecongesController < ApplicationController
  before_action :set_typeconge, only: [:show, :edit, :update, :destroy]

  # GET /typeconges
  # GET /typeconges.json
  def index
    @typeconges = Typeconge.all
  end

  def typeconge_edit
    @typeconges = Typeconge.all
  end

  def typeconge_delete
    @typeconges = Typeconge.all
  end

  # GET /typeconges/1
  # GET /typeconges/1.json
  def show
  end

  # GET /typeconges/new
  def new
    @typeconge = Typeconge.new
  end

  # GET /typeconges/1/edit
  def edit
  end

  # POST /typeconges
  # POST /typeconges.json
  def create
    @typeconge = Typeconge.new(typeconge_params)

    respond_to do |format|
      if @typeconge.save
        format.html { redirect_to @typeconge, notice: 'Typeconge was successfully created.' }
        format.json { render :show, status: :created, location: @typeconge }
      else
        format.html { render :new }
        format.json { render json: @typeconge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typeconges/1
  # PATCH/PUT /typeconges/1.json
  def update
    respond_to do |format|
      if @typeconge.update(typeconge_params)
        format.html { redirect_to @typeconge, notice: 'Typeconge was successfully updated.' }
        format.json { render :show, status: :ok, location: @typeconge }
      else
        format.html { render :edit }
        format.json { render json: @typeconge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeconges/1
  # DELETE /typeconges/1.json
  def destroy
    @typeconge.destroy
    respond_to do |format|
      format.html { redirect_to typeconges_url, notice: 'Typeconge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeconge
      @typeconge = Typeconge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def typeconge_params
      params.require(:typeconge).permit(:typeconge)
    end
end
