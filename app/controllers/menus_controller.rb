class MenusController < ApplicationController
    
    def show
        @menu = Menu.find_by_id(params[:id])
    end
    
    def index 
        @menus = Menu.all
    end
    
    def new
        
    end    
    
    def create
    @menu = Menu.new(params.require(:menu).permit(:item,:price))
    @menu.save
    redirect_to @menu
    end
end
