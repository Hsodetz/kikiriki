class AutorizacionsController < ApplicationController
  before_action :set_autorizacion, only: [:show, :edit, :update, :destroy]

  # GET /autorizacions
  # GET /autorizacions.json
  def index
    @autorizacions = Autorizacion.all
  end

  # GET /autorizacions/1
  # GET /autorizacions/1.json
  def show
  end

  # GET /autorizacions/new
  def new
    @autorizacion = Autorizacion.new
  end

  # GET /autorizacions/1/edit
  def edit
  end

  # POST /autorizacions
  # POST /autorizacions.json
  def create
    @autorizacion = Autorizacion.new(autorizacion_params)

    respond_to do |format|
      if @autorizacion.save
        format.html { redirect_to @autorizacion, notice: 'Autorizacion was successfully created.' }
        format.json { render :show, status: :created, location: @autorizacion }
      else
        format.html { render :new }
        format.json { render json: @autorizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autorizacions/1
  # PATCH/PUT /autorizacions/1.json
  def update
    respond_to do |format|
      if @autorizacion.update(autorizacion_params)
        format.html { redirect_to @autorizacion, notice: 'Autorizacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @autorizacion }
      else
        format.html { render :edit }
        format.json { render json: @autorizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autorizacions/1
  # DELETE /autorizacions/1.json
  def destroy
    @autorizacion.destroy
    respond_to do |format|
      format.html { redirect_to autorizacions_url, notice: 'Autorizacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autorizacion
      @autorizacion = Autorizacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autorizacion_params
      params.require(:autorizacion).permit(:codigo, :alumno_id, :colegio_id)
    end
end
