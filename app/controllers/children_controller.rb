class ChildrenController < ApplicationController
  respond_to :html, :js

  def create
    @parent = Parent.find(params[:parent_id])
    @child = @parent.children.create(params[:child])
    flash[:notice] = 'Requirement was successfully created.' if @child.save
    respond_with @child
  end

  def destroy
    @parent = Parent.find(params[:parent_id])
    @child = @parent.children.find(params[:id])
    @child.destroy
    redirect_to parent_path(@parent)
  end

  def new
    @parent = Parent.find(params[:parent_id])
    @child = @parent.children.build 
    respond_with @child
  end

end
