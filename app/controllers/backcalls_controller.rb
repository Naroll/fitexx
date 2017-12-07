class BackcallsController < ApplicationController
  before_action :set_backcall, only: [:show, :edit, :update, :destroy]

  # GET /backcalls
  # GET /backcalls.json
  def index
    @backcalls = Backcall.all
  end

  # GET /backcalls/1
  # GET /backcalls/1.json
  def show
  end

  # GET /backcalls/new
  def new
    @backcall = Backcall.new
  end

  # GET /backcalls/1/edit
  def edit
  end

  # POST /backcalls
  # POST /backcalls.json
  def create
    @backcall = Backcall.new(backcall_params)

    respond_to do |format|
      if @backcall.save
        format.html { redirect_to @backcall, notice: 'Backcall was successfully created.' }
        format.json { render :show, status: :created, location: @backcall }
      else
        format.html { render :new }
        format.json { render json: @backcall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backcalls/1
  # PATCH/PUT /backcalls/1.json
  def update
    respond_to do |format|
      if @backcall.update(backcall_params)
        format.html { redirect_to @backcall, notice: 'Backcall was successfully updated.' }
        format.json { render :show, status: :ok, location: @backcall }
      else
        format.html { render :edit }
        format.json { render json: @backcall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backcalls/1
  # DELETE /backcalls/1.json
  def destroy
    @backcall.destroy
    respond_to do |format|
      format.html { redirect_to backcalls_url, notice: 'Backcall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backcall
      @backcall = Backcall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backcall_params
      params.require(:backcall).permit(:name, :phone)
    end
end
