import 'package:flutter/material.dart';
import '../models/models.dart';

class MockData {
  static const double currentMonthSpend = 84320.50;
  static const double lastMonthSpend = 71800.00;
  static double get percentChange =>
      ((currentMonthSpend - lastMonthSpend) / lastMonthSpend) * 100;

  static const List<CategoryInfo> categories = [
    CategoryInfo(
      label: 'Food',
      emoji: '🍜',
      color: Color(0xFFFF6B6B),
      totalSpent: 18640,
    ),
    CategoryInfo(
      label: 'Travel',
      emoji: '✈️',
      color: Color(0xFF00E5C9),
      totalSpent: 22100,
    ),
    CategoryInfo(
      label: 'Shopping',
      emoji: '🛍️',
      color: Color(0xFFFFBF47),
      totalSpent: 15800,
    ),
    CategoryInfo(
      label: 'Health',
      emoji: '💊',
      color: Color(0xFF4ECCA3),
      totalSpent: 8200,
    ),
    CategoryInfo(
      label: 'Entertainment',
      emoji: '🎮',
      color: Color(0xFFA99BE0),
      totalSpent: 6420,
    ),
    CategoryInfo(
      label: 'Utilities',
      emoji: '⚡',
      color: Color(0xFF7C6FCD),
      totalSpent: 5900,
    ),
    CategoryInfo(
      label: 'Education',
      emoji: '📚',
      color: Color(0xFF64B5F6),
      totalSpent: 7260,
    ),
  ];

  static final List<Transaction> transactions = [
    // Food
    _t('t01', 'Swiggy', 'Dinner · Zomato', 850, _d(1), TransactionCategory.food, emoji: '🍛'),
    _t('t02', 'Starbucks', 'Coffee & Snacks', 680, _d(1), TransactionCategory.food, emoji: '☕'),
    _t('t03', 'BigBasket', 'Grocery delivery', 2340, _d(2), TransactionCategory.food, emoji: '🥬'),
    _t('t04', 'Zomato', 'Lunch · Biryani House', 420, _d(2), TransactionCategory.food, emoji: '🍚'),
    _t('t05', 'McDonald\'s', 'McSpicy + Fries', 390, _d(3), TransactionCategory.food, emoji: '🍔'),
    _t('t06', 'Blinkit', 'Quick grocery', 1190, _d(4), TransactionCategory.food, emoji: '🛒'),
    _t('t07', 'Dunzo', 'Fresh vegetables', 560, _d(5), TransactionCategory.food, emoji: '🥕'),
    _t('t08', 'Swiggy Instamart', 'Snacks & drinks', 740, _d(6), TransactionCategory.food, emoji: '🥤'),
    _t('t09', 'Chai Point', 'Chai & sandwich', 210, _d(7), TransactionCategory.food, emoji: '🍵'),
    _t('t10', 'Pizza Hut', 'Weekend treat', 1250, _d(8), TransactionCategory.food, emoji: '🍕'),
    // Travel
    _t('t11', 'Uber', 'Airport · T2', 1840, _d(1), TransactionCategory.travel, emoji: '🚖'),
    _t('t12', 'IRCTC', 'Mumbai–Pune · 2AC', 1260, _d(2), TransactionCategory.travel, emoji: '🚂'),
    _t('t13', 'IndiGo', 'BOM–DEL · 6E 502', 5490, _d(3), TransactionCategory.travel, emoji: '✈️'),
    _t('t14', 'Ola', 'Office commute', 340, _d(4), TransactionCategory.travel, emoji: '🚕'),
    _t('t15', 'Rapido', 'Quick ride', 95, _d(5), TransactionCategory.travel, emoji: '🏍️'),
    _t('t16', 'Uber', 'Mall trip', 450, _d(6), TransactionCategory.travel, emoji: '🚖'),
    _t('t17', 'MakeMyTrip', 'Hotel · Goa', 8200, _d(7), TransactionCategory.travel, emoji: '🏨'),
    _t('t18', 'RedBus', 'Pune–Nashik · Sleeper', 850, _d(8), TransactionCategory.travel, emoji: '🚌'),
    _t('t19', 'Namma Metro', 'Monthly pass', 1200, _d(9), TransactionCategory.travel, emoji: '🚇'),
    _t('t20', 'Ola', 'Late night ride', 520, _d(10), TransactionCategory.travel, emoji: '🚕'),
    // Shopping
    _t('t21', 'Amazon', 'Kindle Paperwhite', 8999, _d(1), TransactionCategory.shopping, emoji: '📦'),
    _t('t22', 'Myntra', 'Casual shirts ×3', 2840, _d(3), TransactionCategory.shopping, emoji: '👕'),
    _t('t23', 'Flipkart', 'Earbuds · Sony', 3299, _d(5), TransactionCategory.shopping, emoji: '🎧'),
    _t('t24', 'Nykaa', 'Skincare haul', 1680, _d(6), TransactionCategory.shopping, emoji: '🧴'),
    _t('t25', 'IKEA', 'Desk organiser', 1490, _d(9), TransactionCategory.shopping, emoji: '🪑'),
    _t('t26', 'Meesho', 'Home décor', 760, _d(11), TransactionCategory.shopping, emoji: '🏡'),
    _t('t27', 'Ajio', 'Sports shoes', 3200, _d(12), TransactionCategory.shopping, emoji: '👟'),
    _t('t28', 'Decathlon', 'Yoga mat', 1200, _d(13), TransactionCategory.shopping, emoji: '🧘'),
    // Health
    _t('t29', 'PharmEasy', 'Monthly meds', 1840, _d(2), TransactionCategory.health, emoji: '💊'),
    _t('t30', 'Cult.fit', 'Monthly plan', 2200, _d(1), TransactionCategory.health, emoji: '🏋️'),
    _t('t31', 'Apollo 24|7', 'Doctor consult', 600, _d(7), TransactionCategory.health, emoji: '🩺'),
    _t('t32', 'Practo', 'Lab tests', 1400, _d(10), TransactionCategory.health, emoji: '🧪'),
    _t('t33', 'Netmeds', 'Vitamins & supplements', 980, _d(12), TransactionCategory.health, emoji: '🍊'),
    _t('t34', 'Lenskart', 'Eyeglasses', 1800, _d(14), TransactionCategory.health, emoji: '👓'),
    // Entertainment
    _t('t35', 'Netflix', 'Monthly Premium', 649, _d(1), TransactionCategory.entertainment, emoji: '🎬'),
    _t('t36', 'Spotify', 'Family plan', 179, _d(1), TransactionCategory.entertainment, emoji: '🎵'),
    _t('t37', 'BookMyShow', 'Oppenheimer · 2 tickets', 780, _d(5), TransactionCategory.entertainment, emoji: '🎟️'),
    _t('t38', 'Steam', 'Elden Ring DLC', 1499, _d(8), TransactionCategory.entertainment, emoji: '🎮'),
    _t('t39', 'JioCinema', 'Annual plan', 599, _d(11), TransactionCategory.entertainment, emoji: '📺'),
    _t('t40', 'Disney+', 'Premium · 1yr', 1499, _d(13), TransactionCategory.entertainment, emoji: '✨'),
    // Utilities
    _t('t41', 'Tata Power', 'Electricity bill', 2400, _d(5), TransactionCategory.utilities, emoji: '⚡'),
    _t('t42', 'Airtel', 'Broadband · 200Mbps', 999, _d(5), TransactionCategory.utilities, emoji: '📡'),
    _t('t43', 'Jio', 'Mobile recharge', 666, _d(10), TransactionCategory.utilities, emoji: '📱'),
    _t('t44', 'LPG Booking', 'Indane gas cylinder', 902, _d(12), TransactionCategory.utilities, emoji: '🔥'),
    _t('t45', 'Society app', 'Maintenance charges', 1800, _d(1), TransactionCategory.utilities, emoji: '🏢'),
    // Education
    _t('t46', 'Udemy', 'Flutter Masterclass', 499, _d(2), TransactionCategory.education, emoji: '💻'),
    _t('t47', 'Coursera', 'ML Specialisation', 2499, _d(4), TransactionCategory.education, emoji: '🤖'),
    _t('t48', 'O\'Reilly', 'Annual membership', 3999, _d(6), TransactionCategory.education, emoji: '📖'),
    _t('t49', 'Unacademy', 'Monthly plan', 1200, _d(9), TransactionCategory.education, emoji: '🎓'),
    // Credits / Transfers
    _t('t50', 'Salary Credit', 'June 2025 salary', 95000, _d(1), TransactionCategory.transfer, isCredit: true, emoji: '💰'),
    _t('t51', 'GPay', 'Reimbursement · Ravi', 1500, _d(3), TransactionCategory.transfer, isCredit: true, emoji: '↩️'),
    // More mixed
    _t('t52', 'HDFC Bank', 'Credit card bill', 12400, _d(9), TransactionCategory.utilities, emoji: '💳'),
    _t('t53', 'Zomato', 'Team lunch', 3400, _d(11), TransactionCategory.food, emoji: '🍱'),
    _t('t54', 'Amazon', 'Office supplies', 2100, _d(12), TransactionCategory.shopping, emoji: '📦'),
    _t('t55', 'Uber Eats', 'Movie night food', 940, _d(14), TransactionCategory.food, emoji: '🍿'),
    _t('t56', 'Myntra', 'Formal wear', 4500, _d(15), TransactionCategory.shopping, emoji: '👔'),
    _t('t57', 'Swiggy', 'Weekend brunch', 1120, _d(15), TransactionCategory.food, emoji: '🥞'),
  ];

  static Transaction _t(
    String id,
    String title,
    String subtitle,
    double amount,
    DateTime date,
    TransactionCategory category, {
    bool isCredit = false,
    String? emoji,
  }) {
    return Transaction(
      id: id,
      title: title,
      subtitle: subtitle,
      amount: amount,
      date: date,
      category: category,
      isCredit: isCredit,
      avatarEmoji: emoji,
    );
  }

  static DateTime _d(int dayOfMonth) =>
      DateTime(2025, 6, dayOfMonth);

  /// Spend per day (for sparkline)
  static Map<int, double> get dailySpend {
    final map = <int, double>{};
    for (final t in transactions) {
      if (!t.isCredit) {
        map[t.date.day] = (map[t.date.day] ?? 0) + t.amount;
      }
    }
    return map;
  }
}
