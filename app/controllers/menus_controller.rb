class MenusController < ApplicationController
    before_action :set_menu, only:[:show,:edit,:update,:destroy]
      
    def show
    end
    
    def index 
        @menus = Menu.all
    end
    
    def edit
    end    
    
    def new
    @menu = Menu.new    
    end    
    
    def create
            @menu = Menu.new(menu_params)
            if @menu.save
            flash[:notice] = "A new item to a Menu has been created successfully!"
            redirect_to @menu
            else
            render 'new'
            end    
    end
    
    def update
        if @menu.update(menu_params)
            flash[:notice] = "Menu has been updated successfully"
            redirect_to @menu
        else
          render 'edit'  
        end
    end    
    
    def destroy
        @menu.destroy
        redirect_to menus_path
    end    
    
    private
    
    def set_menu
    @menu = Menu.find(params[:id])
    end
    
    def menu_params
    params.require(:menu).permit(:item,:price)
    end
    
end
