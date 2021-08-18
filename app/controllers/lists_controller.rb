class ListsController < ApplicationController

    def index
      @lists = List.all
    end
    
    def show
      @list = List.find(params[:id])
    end
    
    def new
      @list = List.new
    end
    
    def create
      @list = List.new(List_params)
    if List.save
      redirect_to List_path(@list)
    else
      render "new"
    end
    end
    end
    
      private
    
      def list_paramas
        params.require(:list).permit(params[:name, :created_at, :updated_at])
      end
    