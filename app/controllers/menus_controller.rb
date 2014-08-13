class MenusController < ApplicationController
  before_action :get_menu, only: [:show, :edit, :destroy]

  def index
    @menus = Menu.all   
  end

  def show
  end

  def edit
  end

  def new
    @menu = Menu.new
  end


  private

  def menu_params
    params.require(:menu).permit(:name, :owner, menu_items_attributes: [:id, :name, :description, :price, :vegetarian, :_destroy])
  end

  def get_menu
    @menu = Menu.find(params[:id])
  end
end
