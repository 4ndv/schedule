class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :set_institute, only: [:new, :show, :edit, :update, :destroy]

  # GET /groups/1
  def show
    @schedule = []
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to institute_group_url(@group), notice: 'Группа добавлена.'
    else
      render :new
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      redirect_to institute_group_url(@group), notice: 'Группа изменена.'
    else
      render :edit
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy

    redirect_to institute_url(@institute), notice: 'Группа удалена.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    def set_institute
      @institute = Institute.find(params[:institute_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.fetch(:group, {}).permit(:number).merge(institute_id: params[:institute_id])
    end
end
