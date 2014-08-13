class MenusController < ApplicationController
  before_action :get_menu, only: [:show, :edit, :destroy]

  def index
    @menus = Menu.all   
  end

  def show
  end


  private

  def get_menu
    @menu = Menu.find(params[:id])
  end
end
