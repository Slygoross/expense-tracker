import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

// Enum is custom data type that contains a fixed set of constants
/* 
  Enum below is used to represent the category of the expense.
*/
enum Category { food, travel, leisure, work }

const categoryItems = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

final formatter = DateFormat.yMd();

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

  String get formattedDate {
    return formatter.format(date);
  }
}
