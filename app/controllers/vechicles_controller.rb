class VechiclesController < ApplicationController
  before_action :set_vechicle, only: [:show, :edit, :update, :destroy]

  # GET /vechicles
  # GET /vechicles.json
  def index
    @vechicles = Vechicle.all
  end

  # GET /vechicles/1
  # GET /vechicles/1.json
  def show
  end

  # GET /vechicles/new
  def new
    @vechicle = Vechicle.new
  end

  # GET /vechicles/1/edit
  def edit
  end

  # POST /vechicles
  # POST /vechicles.json
  def create
    @vechicle = Vechicle.new(vechicle_params)

    respond_to do |format|
      if @vechicle.save
        format.html { redirect_to @vechicle, notice: 'Vechicle was successfully created.' }
        format.json { render :show, status: :created, location: @vechicle }
      else
        format.html { render :new }
        format.json { render json: @vechicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vechicles/1
  # PATCH/PUT /vechicles/1.json
  def update
    respond_to do |format|
      if @vechicle.update(vechicle_params)
        format.html { redirect_to @vechicle, notice: 'Vechicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vechicle }
      else
        format.html { render :edit }
        format.json { render json: @vechicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vechicles/1
  # DELETE /vechicles/1.json
  def destroy
    @vechicle.destroy
    respond_to do |format|
      format.html { redirect_to vechicles_url, notice: 'Vechicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vechicle
      @vechicle = Vechicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vechicle_params
      params.require(:vechicle).permit(:name, :number, :design, :year, :price, :availability)
    end
end
