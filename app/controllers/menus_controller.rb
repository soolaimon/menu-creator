class MenusController < ApplicationController
  before_action :get_menu, only: [:show, :edit, :update, :destroy]

  def index

    @menus = Menu.all

    respond_to do |format|
      format.html
      format.json {render json: @menus}
    end
  end

  def search
    render json: Menu.search(params[:q])
  end

  def show
  end

  def edit
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to menu_path(@menu)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @menu.update_attributes(menu_params)
      redirect_to menu_path(@menu)
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    redirect_to menus_path
  end


  private

  def menu_params
    params.require(:menu).permit(:name, :owner, menu_items_attributes: [:name, :description, :price, :vegetarian, :id, :_destroy])
  end

  def get_menu
    @menu = Menu.find(params[:id])
  end
end
