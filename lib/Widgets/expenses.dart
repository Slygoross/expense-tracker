import 'package:expense_tracker/Widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _reqisteredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 3500,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Netflix',
        amount: 200,
        date: DateTime.now(),
        category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(
            // Expanded is used to take the remaining space in the column as ListView is nested in column widget and flutter doesn't know how to size this.
            child: ExpensesList(expenses: _reqisteredExpenses),
          ),
        ],
      ),
    );
  }
}
