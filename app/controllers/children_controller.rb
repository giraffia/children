class ChildrenController < ApplicationController
  def index
    @children = Child.all
  end

  def show
    @child = Child.find params[:id]
  end

  def new
    @child = Child.new
  end

  def create
    # TODO
    redirect_to '/children'
  end
end
