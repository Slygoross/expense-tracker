import 'package:uuid/uuid.dart';

const uuid = Uuid();

// Enum is custom data type that contains a fixed set of constants
/* 
  Enum below is used to represent the category of the expense.
*/
enum Category { food, travel, leisure, work }

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4(); // Generation of random id by initialiser list
  /*In Dart, "Initializer Lists" can be used to initialize class properties
                          (like "id") with values that are NOT received as constructor
                          function arguments.*/

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
