class TrainingmovesController < ApplicationController
  before_action :set_trainingmove, only: [:show, :edit, :update, :destroy]

  # GET /trainingmoves
  # GET /trainingmoves.json
  def index
    @trainingmoves = Trainingmove.all
  end

  # GET /trainingmoves/1
  # GET /trainingmoves/1.json
  def show
  end

  # GET /trainingmoves/new
  def new
    @trainingmove = Trainingmove.new
  end

  # GET /trainingmoves/1/edit
  def edit
  end

  # POST /trainingmoves
  # POST /trainingmoves.json
  def create
    @trainingmove = Trainingmove.new(trainingmove_params)

    respond_to do |format|
      if @trainingmove.save
        format.html { redirect_to @trainingmove, notice: 'Trainingmove was successfully created.' }
        format.json { render :show, status: :created, location: @trainingmove }
      else
        format.html { render :new }
        format.json { render json: @trainingmove.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainingmoves/1
  # PATCH/PUT /trainingmoves/1.json
  def update
    respond_to do |format|
      if @trainingmove.update(trainingmove_params)
        format.html { redirect_to @trainingmove, notice: 'Trainingmove was successfully updated.' }
        format.json { render :show, status: :ok, location: @trainingmove }
      else
        format.html { render :edit }
        format.json { render json: @trainingmove.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainingmoves/1
  # DELETE /trainingmoves/1.json
  def destroy
    @trainingmove.destroy
    respond_to do |format|
      format.html { redirect_to trainingmoves_url, notice: 'Trainingmove was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainingmove
      @trainingmove = Trainingmove.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainingmove_params
      params.require(:trainingmove).permit(:move_id, :training_id)
    end
end
