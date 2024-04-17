import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();

  // Dispose method here is used to clear out the memory so that controller doesnt keep stuff in memory
  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      // remove const in front of padding if error comes in future
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
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
                    print(_titleController.text);
                  },
                  child: Text('Save Expense')),
            ],
          )
        ],
      ),
    );
  }
}
