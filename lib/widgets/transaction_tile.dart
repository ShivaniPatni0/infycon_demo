import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../models/models.dart';
import '../theme/app_theme.dart';

class TransactionTile extends StatelessWidget {
  final Transaction transaction;
  const TransactionTile({super.key, required this.transaction});

  Color _categoryColor(TransactionCategory cat) {
    switch (cat) {
      case TransactionCategory.food:
        return AppTheme.accentWarm;
      case TransactionCategory.travel:
        return AppTheme.accent;
      case TransactionCategory.shopping:
        return AppTheme.accentAmber;
      case TransactionCategory.health:
        return AppTheme.green;
      case TransactionCategory.entertainment:
        return AppTheme.primaryLight;
      case TransactionCategory.utilities:
        return AppTheme.primary;
      case TransactionCategory.transfer:
        return AppTheme.green;
      case TransactionCategory.education:
        return const Color(0xFF64B5F6);
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _categoryColor(transaction.category);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.cardBorder),
      ),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: color.withOpacity(0.12),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withOpacity(0.2)),
            ),
            child: Center(
              child: Text(
                transaction.avatarEmoji ?? '💸',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(width: 12),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.title,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  transaction.subtitle,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppTheme.textMuted,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          // Amount + date
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${transaction.isCredit ? '+' : '-'} ₹${_fmt(transaction.amount)}',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: transaction.isCredit ? AppTheme.green : AppTheme.textPrimary,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                DateFormat('d MMM').format(transaction.date),
                style: GoogleFonts.inter(
                  fontSize: 11,
                  color: AppTheme.textMuted,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _fmt(double v) {
    if (v >= 1000) {
      final formatted = NumberFormat('#,##0', 'en_IN').format(v.toInt());
      return formatted;
    }
    return v.toStringAsFixed(0);
  }
}
