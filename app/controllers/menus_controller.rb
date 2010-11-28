class MenusController < ApplicationController
  layout 'delivery', :only => [:index]
  before_filter :get_current_menu, :only => [:show, :edit, :update, :destroy]
  
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
  
  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      redirect_to menus_path
    else
      render :action => :new
    end
  end
  
  def update
    if @menu.update_attributes(params[:menu])
      redirect_to menus_path
    else
      render :action => :edit
    end
  end 

  def destroy
     @menu.destroy
     redirect_to menus_path
  end
  
  protected
  def get_current_menu
    @menu = Menu.find(params[:id])
  end  
end
