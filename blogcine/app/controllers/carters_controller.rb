class CartersController < ApplicationController
  before_action :set_carter, only: [:show, :edit, :update, :destroy]

  # GET /carters
  # GET /carters.json
  def index
    @carters = Carter.all
  end

  # GET /carters/1
  # GET /carters/1.json
  def show
  end

  # GET /carters/new
  def new
    @carter = Carter.new
  end

  # GET /carters/1/edit
  def edit
  end

  # POST /carters
  # POST /carters.json
  def create
    @carter = Carter.new(carter_params)

    respond_to do |format|
      if @carter.save
        format.html { redirect_to @carter, notice: 'Carter was successfully created.' }
        format.json { render :show, status: :created, location: @carter }
      else
        format.html { render :new }
        format.json { render json: @carter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carters/1
  # PATCH/PUT /carters/1.json
  def update
    respond_to do |format|
      if @carter.update(carter_params)
        format.html { redirect_to @carter, notice: 'Carter was successfully updated.' }
        format.json { render :show, status: :ok, location: @carter }
      else
        format.html { render :edit }
        format.json { render json: @carter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carters/1
  # DELETE /carters/1.json
  def destroy
    @carter.destroy
    respond_to do |format|
      format.html { redirect_to carters_url, notice: 'Carter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carter
      @carter = Carter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carter_params
      params.require(:carter).permit(:cartelera, :nombre, :rating)
    end
end
