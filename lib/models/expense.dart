import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, college, leisure, work, others }

const categoryIcons = {
  Category.food: Icons.lunch_dining_outlined,
  Category.college: Icons.book_outlined,
  Category.leisure: Icons.airline_seat_recline_extra_sharp,
  Category.work: Icons.work_outline,
  Category.others: Icons.add,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
    }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
  

}