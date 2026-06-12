import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final String subtitle;
  final double amount;
  final DateTime date;
  final TransactionCategory category;
  final bool isCredit;
  final String? avatarEmoji;

  const Transaction({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.date,
    required this.category,
    this.isCredit = false,
    this.avatarEmoji,
  });
}

enum TransactionCategory {
  food,
  travel,
  shopping,
  entertainment,
  health,
  utilities,
  transfer,
  education,
}

class CategoryInfo {
  final String label;
  final String emoji;
  final Color color;
  final double totalSpent;

  const CategoryInfo({
    required this.label,
    required this.emoji,
    required this.color,
    required this.totalSpent,
  });
}
