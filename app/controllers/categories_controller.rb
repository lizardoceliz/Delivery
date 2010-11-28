class CategoriesController < ApplicationController
    before_filter :get_current_category, :only => [:show, :edit, :update, :destroy]

    def index
      @categorys = Category.all
    end

    def show
    end

    def edit
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(params[:category])
      if @category.save
        redirect_to menus_path
      else
        render :action => :new
      end
    end

    def update
      if @category.update_attributes(params[:category])
        redirect_to categories_path
      else
        render :action => :edit
      end
    end 

    def destroy
       @category.destroy
       redirect_to categories_path
    end

    protected
    def get_current_menu
      @category = Category.find(params[:id])
    end
end
