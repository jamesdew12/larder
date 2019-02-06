class LarderdbsController < ApplicationController
  before_action :set_larderdb, only: [:show, :edit, :update, :destroy]

  # GET /larderdbs
  # GET /larderdbs.json
  def index
    @larderdbs = Larderdb.all
  end

  # GET /larderdbs/1
  # GET /larderdbs/1.json
  def show
  end

  # GET /larderdbs/new
  def new
    @larderdb = Larderdb.new
  end

  # GET /larderdbs/1/edit
  def edit
  end

  # POST /larderdbs
  # POST /larderdbs.json
  def create
    @larderdb = Larderdb.new(larderdb_params)

    respond_to do |format|
      if @larderdb.save
        format.html { redirect_to @larderdb, notice: 'Larderdb was successfully created.' }
        format.json { render :show, status: :created, location: @larderdb }
      else
        format.html { render :new }
        format.json { render json: @larderdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /larderdbs/1
  # PATCH/PUT /larderdbs/1.json
  def update
    respond_to do |format|
      if @larderdb.update(larderdb_params)
        format.html { redirect_to @larderdb, notice: 'Larderdb was successfully updated.' }
        format.json { render :show, status: :ok, location: @larderdb }
      else
        format.html { render :edit }
        format.json { render json: @larderdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /larderdbs/1
  # DELETE /larderdbs/1.json
  def destroy
    @larderdb.destroy
    respond_to do |format|
      format.html { redirect_to larderdbs_url, notice: 'Larderdb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_larderdb
      @larderdb = Larderdb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def larderdb_params
      params.require(:larderdb).permit(:food, :nutrition)
    end
end
