import 'package:uuid/uuid.dart';

const uuid = Uuid(); // a third party package

enum Category { food, travel, leisure, work }

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
}

//some explination for the enum key word 

// enum: This keyword is used to define an enumeration.
// Category: This is the name of the enum. You can use this name to reference the values in the enum.
// food, travel, leisure, work: These are the constant values (also called members) of the enum. In this case, each member represents a category of some type.