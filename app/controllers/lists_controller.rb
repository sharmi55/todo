class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    @list = List.find(params[:id])
    @list.title = params[:list][:title]
    @list.body = params[:list][:body]

    if @list.update(list_params)
      flash[:notice] = "List was updated."
      redirect_to @list
    else
      flash.now[:alert] = "There was an error saving the list. Please try again."
      render 'edit'
    end
  end

  def destroy
    if @list.destroy
      flash[:notice] = "\"#{@list.title}\" was deleted successfully."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error deleting the list."
      render :show
    end
  end




private

  def list_params
    params.require(:list).permit(:title, :body)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
