class ExpenseController < ApplicationController
  def edit
  end
  def create
    @expense = Expense.new(params.require(:expense).permit(:date,:category,:amount))
    @expense.save
    redirect_to dashboard_index_path
  end
end
