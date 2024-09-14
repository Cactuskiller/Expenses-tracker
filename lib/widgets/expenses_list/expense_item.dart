import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            children: [
              Text(expense.title),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text('\$${expense.amount.toStringAsFixed(2)}'),
                  //in the following we did type casting and the toStringAsFixed method ensure that for exmaple a value of 12.2345 is displayed as 12.23
                  const Spacer(), //this wodget can be add to any column or row to add a space and it's dynamic so it taks the remaning space between items
                  Row(
                    children: [
                      Icon(categoryIcons[expense
                          .category]), //this icon represent the category and it changes dynamicly
                      const SizedBox(width: 8),
                      Text(expense.formattedDate), // using the getter to format the date  also we didi not add () cus it's a getter
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
