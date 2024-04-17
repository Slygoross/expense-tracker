import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  var _enteredTitle = '';
  void _saveTitleInput(String inputValue) {
    _enteredTitle = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      // remove const in front of padding if error comes in future
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitleInput,
            // This is used to take the input from the user
            maxLength: 50,
            // keyboardType: TextInputType.name, // This is used to show the keyboard with the name type
            decoration: const InputDecoration(
              // This is used to show the hint text in the text field
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(_enteredTitle);
                  },
                  child: Text('Save Expense')),
            ],
          )
        ],
      ),
    );
  }
}
