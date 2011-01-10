 
class KidsController < ApplicationController
  def create
    @parent = Parent.find(params[:parent_id])
    @kid = @parent.kids.create(params[:kid])
    
    redirect_to parent_path(@parent)
  end
end