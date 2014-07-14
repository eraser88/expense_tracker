require 'test_helper'

class ExpensesControllerTest < ActionController::TestCase

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create a new Expense Object' do
    post :create, expense: {date: '11/11/2011', category: 'Food', amount: '1111'}
    expense = Expense.find_by(category: 'Food')
    assert expense.amount.to_s == '1111.0'
    assert expense.date.to_s == '2011-11-11'
    assert_redirected_to dashboard_index_path
  end
end
