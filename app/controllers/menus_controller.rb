class MenusController < ApplicationController
    
    def show
        @menu = Menu.find_by_id(params[:id])
    end
    
    def index 
        @menus = Menu.all
    end
    
    def new
    @menu = Menu.new    
    end    
    
    def create
    @menu = Menu.new(params.require(:menu).permit(:item,:price))
    if @menu.save
        flash[:notice] = "A new item has been created successfully!"
    redirect_to @menu
    else
        render 'new'
    end    
    end
    
end
