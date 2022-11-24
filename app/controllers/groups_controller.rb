class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @group_expenses = GroupExpense.includes(:expense).where(group_id: @group)
  end

  def new
    @group = Group.new
  end

  def create
    group = Group.new(group_params)
    group.user = current_user
    if group.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
