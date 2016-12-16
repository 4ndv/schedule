class InstitutesController < ApplicationController
  before_action :set_institute, only: [:show, :edit, :update, :destroy]

  # GET /institutes
  def index
    @institutes = Institute.all
  end

  # GET /institutes/1
  def show
  end

  # GET /institutes/new
  def new
    @institute = Institute.new
  end

  # GET /institutes/1/edit
  def edit
  end

  # POST /institutes
  def create
    @institute = Institute.new(institute_params)

    if @institute.save
      redirect_to @institute, notice: 'Институт добавлен.'
    else
      render :new
    end
  end

  # PATCH/PUT /institutes/1
  def update
    if @institute.update(institute_params)
      redirect_to @institute, notice: 'Институт изменен.'
    else
      render :edit
    end
  end

  # DELETE /institutes/1
  def destroy
    @institute.destroy

    redirect_to institutes_url, notice: 'Институт удален.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institute
      @institute = Institute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institute_params
      params.fetch(:institute, {}).permit(:name)
    end
end
