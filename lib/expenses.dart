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
        children: const [
          Text('Chart'),
          Text('Expense List'),
        ],
      ),
    );
  }
}
