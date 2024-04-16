import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            // This is used to take the input from the user
            maxLength: 50,
            // keyboardType: TextInputType.name, // This is used to show the keyboard with the name type
            decoration: InputDecoration(
                // This is used to show the hint text in the text field
                label: Text('Title')),
          )
        ],
      ),
    );
  }
}
