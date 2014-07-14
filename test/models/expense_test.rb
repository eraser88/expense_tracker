require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
  test 'should give error if amount not present' do
    expense = Expense.new category: 'food', date: '11/11/2012'
    assert_not expense.save, 'Saved without amount'
  end

  test 'should give error if category not present' do
    expense = Expense.new amount: '111', date: '11/11/2012'
    assert_not expense.save, 'Saved without category'
  end

  test 'should give error if date not present' do
    expense = Expense.new category: 'food', amount: '1111'
    assert_not expense.save, 'Saved without date'
  end

  test 'should save if category, amount and date is present' do
    expense = Expense.new category: 'food', amount: '1111', date: '11/11/2011'
    assert expense.save, 'Saved Successfully'
  end
end
