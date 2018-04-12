class ObservacionsController < ApplicationController
  before_action :set_observacion, only: [:show, :edit, :update, :destroy]

  # GET /observacions
  # GET /observacions.json
  def index
    @observacions = Observacion.all
  end

  # GET /observacions/1
  # GET /observacions/1.json
  def show
  end

  # GET /observacions/new
  def new
    @observacion = Observacion.new
  end

  # GET /observacions/1/edit
  def edit
  end

  # POST /observacions
  # POST /observacions.json
  def create
    @observacion = Observacion.new(observacion_params)

    respond_to do |format|
      if @observacion.save
        format.html { redirect_to @observacion, notice: 'Observacion was successfully created.' }
        format.json { render :show, status: :created, location: @observacion }
      else
        format.html { render :new }
        format.json { render json: @observacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observacions/1
  # PATCH/PUT /observacions/1.json
  def update
    respond_to do |format|
      if @observacion.update(observacion_params)
        format.html { redirect_to @observacion, notice: 'Observacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @observacion }
      else
        format.html { render :edit }
        format.json { render json: @observacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observacions/1
  # DELETE /observacions/1.json
  def destroy
    @observacion.destroy
    respond_to do |format|
      format.html { redirect_to observacions_url, notice: 'Observacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observacion
      @observacion = Observacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observacion_params
      params.require(:observacion).permit(:asunto, :mensajes, :profesor_id, :padre_id)
    end
end
