class ExpensesController < ApplicationController
  def index
    @expenses = Expense.where(user: current_user)
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @group_expense = GroupExpense.new
  end

  def create
    group_expense = GroupExpense.new
  end
end
