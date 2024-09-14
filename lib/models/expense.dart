import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid(); // a third party package
final formatter =
    DateFormat.yMd(); //a class provided by intl with it's constrcuter class

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid
            .v4(); //generate a uniqe id when ever the list is being instintiated this line of code is also called 'intilizer list feature'

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  //in the following we will be useing a getter key word which is a computed properte that is derived based on other class properties , this structure will be used with a third party package to format the date

  String get formattedDate {
    return formatter.format(date);
  }
}

//some explination for the enum key word

// enum: This keyword is used to define an enumeration.
// Category: This is the name of the enum. You can use this name to reference the values in the enum.
// food, travel, leisure, work: These are the constant values (also called members) of the enum. In this case, each member represents a category of some type.
