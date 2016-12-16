class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_group, only: [:show, :edit, :new, :create, :update, :destroy]
  before_action :set_institute, only: [:show, :edit, :new, :create, :update, :destroy]

  # GET /items/1
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to institute_group_url(@institute, @group), notice: 'Запись добавлена.'
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      redirect_to institute_group_url(@institute, @group), notice: 'Запись изменена.'
    else
      render :edit
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy

    redirect_to institute_group_url(@institute, @group), notice: 'Запись удалена.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def set_group
      @group = Group.find(params[:group_id])
    end

    def set_institute
      @institute = Institute.find(params[:institute_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.fetch(:item, {}).permit(:position, :lesson_id, :teacher_id, :week_number, :day_number).merge(group_id: params[:group_id])
    end
end
