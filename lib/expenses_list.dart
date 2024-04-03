import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses
          .length, // Used to output no of items in list for belwo function to run that many times
      itemBuilder: (ctx, index) => Text(expenses[index]
          .title), // this is direct function definition where after the return value is given after => symbol.
    ); // Listview.builder Renders only the part of list that is visible.
  }
}
