class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]

  def index
    @prototypes = Prototype.all
  end

  def new
   # @prototype = Prototype.new
  end

  def create
   # @prototype = Prototype.new(prototype_params)
    #if @prototype.save
     # redirect_to @prototype, notice: 'Prototype was successfully created.'
    #else
     # render :new
    #end
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image)
  end
end