# 💸 Spend Summary — Flutter Assignment

A beautifully crafted **Spend Summary** Flutter app built as a take-home assignment. Features a premium dark UI with violet-indigo gradients, smooth animations, and a clean information hierarchy.

---

## ✨ Features

| Feature | Details |
|---|---|
| 📊 **Header Card** | Monthly spend (₹84,320), % change vs last month (+17.4%), sparkline chart, avg/day, transaction count, top category |
| 🏷️ **Category Scroll** | 7 categories (Food, Travel, Shopping, Health, Entertainment, Utilities, Education) — horizontal scroll with icons, amounts, tap-to-select highlight |
| 📋 **Category Breakdown** | Horizontal progress bars per category with amounts |
| 📝 **57 Transactions** | Grouped by date (newest first), emoji avatars, credit/debit colouring, Indian number formatting |
| ➕ **FAB** | Floating action button opens an "Add Expense" bottom sheet |
| 🎨 **Design** | Deep violet `#0F0E17` dark theme, electric cyan + coral accents, Inter typeface, gradient hero card |
| 🎞️ **Animations** | Staggered fade+slide entrance via `flutter_animate`, sparkline on header |

---

## 🖼️ Screenshots
for app Emulator screenshot ,checkout assets/images folder i have added.

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK ≥ 3.0.0
- Dart ≥ 3.0.0

### Run the app

```bash
# Clone the repo
git clone https://github.com/<your-username>/spend-summary-flutter.git
cd spend-summary-flutter

# Install dependencies
flutter pub get

# Run on emulator or device
flutter run
```

### Build APK

```bash
flutter build apk --release
```

---

## 📂 Project Structure

```
lib/
├── main.dart                    # App entry point
├── theme/
│   └── app_theme.dart           # Colors, gradients, typography tokens
├── models/
│   └── models.dart              # Transaction, Category data models
├── data/
│   └── mock_data.dart           # 57 hardcoded transactions + categories
├── screens/
│   └── spend_summary_screen.dart  # Main screen with CustomScrollView
└── widgets/
    ├── spend_header_card.dart   # Hero gradient card with sparkline
    ├── category_scroll.dart     # Horizontal scroll + breakdown chart
    └── transaction_tile.dart    # Individual transaction row
```

---

## 🤖 AI Tools Used

### Claude (claude.ai / Anthropic)
Used **Claude Sonnet** as the primary development assistant throughout this project.

**How it was used:**
- **Architecture planning** — Claude suggested the widget decomposition (`SpendHeaderCard`, `CategoryScroll`, `TransactionTile`) based on the assignment brief
- **Design direction** — Asked Claude to recommend a color palette and typography pairing for a premium fintech dark-mode UI; it proposed the deep violet `#0F0E17` background + electric cyan `#00E5C9` accent combination
- **Code generation** — Generated initial implementations for each widget, which I reviewed, adjusted for Flutter specifics (API compatibility, layout tweaks), and refined
- **Mock data** — Claude generated the 57 realistic Indian transaction entries with varied merchants, categories, and amounts
- **fl_chart sparkline** — Claude provided the `LineChart` configuration for the 15-day spend sparkline in the header card
- **Animation stagger** — Suggested `flutter_animate` for the entrance animations and the stagger pattern for list items

**My contributions on top of AI output:**
- Adjusted layout constraints and padding for pixel-perfect spacing
- Tuned gradient stops and opacity values by visual inspection
- Restructured the grouped-by-date list logic from a flat `ListView` to a proper `CustomScrollView` with multiple `SliverList`s
- Added the `_showElevation` scroll listener for the AppBar shadow
- Tested and fixed the `fl_chart` data mapping (dividing amounts by 1000 to normalise the y-axis)

**Time taken:** ~2.5 hours

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.1.0        # Inter typeface
  fl_chart: ^0.68.0           # Sparkline chart in header card
  intl: ^0.19.0               # Indian number formatting (₹84,320)
  flutter_animate: ^4.5.0     # Entrance animations
```

---
