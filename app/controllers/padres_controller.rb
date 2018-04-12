class PadresController < ApplicationController
  before_action :set_padre, only: [:show, :edit, :update, :destroy]

  # GET /padres
  # GET /padres.json
  def index
    @padres = Padre.all
  end

  # GET /padres/1
  # GET /padres/1.json
  def show
  end

  # GET /padres/new
  def new
    @padre = Padre.new
  end

  # GET /padres/1/edit
  def edit
  end

  # POST /padres
  # POST /padres.json
  def create
    @padre = Padre.new(padre_params)

    respond_to do |format|
      if @padre.save
        format.html { redirect_to @padre, notice: 'Padre was successfully created.' }
        format.json { render :show, status: :created, location: @padre }
      else
        format.html { render :new }
        format.json { render json: @padre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /padres/1
  # PATCH/PUT /padres/1.json
  def update
    respond_to do |format|
      if @padre.update(padre_params)
        format.html { redirect_to @padre, notice: 'Padre was successfully updated.' }
        format.json { render :show, status: :ok, location: @padre }
      else
        format.html { render :edit }
        format.json { render json: @padre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /padres/1
  # DELETE /padres/1.json
  def destroy
    @padre.destroy
    respond_to do |format|
      format.html { redirect_to padres_url, notice: 'Padre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_padre
      @padre = Padre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def padre_params
      params.require(:padre).permit(:nombres, :apellidos, :pais, :correo, :clave, :telefono)
    end
end
