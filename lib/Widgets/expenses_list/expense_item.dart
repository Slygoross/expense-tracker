import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        // Card widget by default doesn't have padding attribute so we refactor text widget with padding widget.
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge, // This line takes the theming from the main function which we set up earlier.
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('\₹${expense.amount.toStringAsFixed(2)}'),
                /* 
                  The method toStringAsFixed() is used to convert a number into a string and
                  keep a fixed number of decimals. 
                  $ used to inject the value of the variable into the string.
                  \₹ is used to display the currency symbol which is known as escaping special characters.
                */
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryItems[expense
                        .category]), // Icon widget is used to display the icon.
                    const SizedBox(width: 8),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            )
          ],
        ),
      ), // Taking in one expense and displaying its title.
    );
  }
}
