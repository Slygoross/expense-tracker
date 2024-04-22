import 'package:flutter/material.dart';

import 'package:expense_tracker/Widgets/expenses.dart';

//k is used before variable name as a convention to represent global variables especially color scheme related.
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
          )),
      home: const Expenses(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
