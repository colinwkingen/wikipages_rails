class TypesController < ApplicationController
  def index
    @types = Type.all
    render :index
  end

  def new
    @type = Type.new
    render :new
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to types_path
    else
      render :new
    end
  end

  def edit
    @type = Type.find(params[:id])
    render :edit
  end


  private
  def type_params
    params.require(:type).permit(:category)
  end

end