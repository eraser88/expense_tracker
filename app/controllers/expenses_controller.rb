class ExpensesController < ApplicationController
  def new
  end

  def create
    @expense = Expense.new(params.require(:expense).permit(:date, :category, :amount))
    @expense.save
    redirect_to dashboard_index_path
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])

    if @expense.update(params.require(:expense).permit(:date, :category, :amount))
      redirect_to dashboard_index_path
    else
      render 'edit'
    end

  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    redirect_to dashboard_index_path
  end
end
