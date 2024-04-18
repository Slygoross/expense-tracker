import 'package:expense_tracker/Widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/Widgets/new_expense.dart';
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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      //isScrollControlled with set the modalbottomsheet to full screen
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(
        onAddExpense: _addExpense,
      ),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _reqisteredExpenses.add(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          // Used to display buttons int he app bar above
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
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
