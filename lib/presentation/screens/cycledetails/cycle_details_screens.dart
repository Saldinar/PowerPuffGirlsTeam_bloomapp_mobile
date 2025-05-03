import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CycleDetailsScreens extends StatelessWidget {
  const CycleDetailsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Period Tracker',
      theme: AppTheme.lightTheme,
      home: const AgeSelectionPage(),
    );
  }
}

class ApplicationColors {
  static const Color primary = Color(0xFF445CAA);
  static const Color white = Colors.white;
  static const Color textPrimary = Color(0xFF111827);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textTertiary = Color(0xFF4B5563);
  static const Color indicatorInactive = Color(0xFFD1D5DB);
}

class AppTextStyles {
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: ApplicationColors.textPrimary,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ApplicationColors.textPrimary,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    color: ApplicationColors.textSecondary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    color: ApplicationColors.textTertiary,
  );

  static const TextStyle buttonText = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ApplicationColors.primary,
      fontFamily: 'Inter',
      scaffoldBackgroundColor: ApplicationColors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ApplicationColors.primary,
          foregroundColor: ApplicationColors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.bodyMedium,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: ApplicationColors.white,
        foregroundColor: ApplicationColors.textPrimary,
        elevation: 0,
      ),
    );
  }
}

class AgeSelectionPage extends StatefulWidget {
  const AgeSelectionPage({super.key});

  @override
  _AgeSelectionPageState createState() => _AgeSelectionPageState();
}

class _AgeSelectionPageState extends State<AgeSelectionPage> {
  int selectedAge = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Age Selection'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'How old are you?',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: CupertinoPicker(
                      magnification: 1.2,
                      squeeze: 1.2,
                      useMagnifier: true,
                      itemExtent: 40,
                      diameterRatio: 1.1,
                      onSelectedItemChanged: (int index) {
                        setState(() {
                          selectedAge = index + 15;
                        });
                      },
                      children: List<Widget>.generate(36, (int index) {
                        return Center(
                          child: Text(
                            '${index + 15}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      }),
                      scrollController: FixedExtentScrollController(
                        initialItem: selectedAge - 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Your age helps us provide more accurate\npredictions and insights.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LastPeriodPage(selectedAge: selectedAge),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}

class LastPeriodPage extends StatefulWidget {
  final int selectedAge;

  const LastPeriodPage({super.key, required this.selectedAge});

  @override
  _LastPeriodPageState createState() => _LastPeriodPageState();
}

class _LastPeriodPageState extends State<LastPeriodPage> {
  late int selectedDay;
  late int selectedMonth;
  late int selectedYear;
  late DateTime selectedDate;

  final int minYear = 2023;
  final int maxYear = 2027;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    selectedDay = now.day;
    selectedMonth = now.month;
    selectedYear = 2025;
    selectedDate = DateTime(selectedYear, selectedMonth, selectedDay);
  }

  void _updateSelectedDate() {
    final daysInMonth = DateTime(selectedYear, selectedMonth + 1, 0).day;
    if (selectedDay > daysInMonth) {
      selectedDay = daysInMonth;
    }
    setState(() {
      selectedDate = DateTime(selectedYear, selectedMonth, selectedDay);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Last Period'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'When was your last period?',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          child: CupertinoPicker(
                            magnification: 1.2,
                            squeeze: 1.2,
                            useMagnifier: true,
                            itemExtent: 40,
                            diameterRatio: 1.1,
                            onSelectedItemChanged: (int index) {
                              setState(() {
                                selectedDay = index + 1;
                                _updateSelectedDate();
                              });
                            },
                            scrollController: FixedExtentScrollController(
                              initialItem: selectedDay - 1,
                            ),
                            children: List<Widget>.generate(31, (int index) {
                              return Center(
                                child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(fontSize: 20),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(
                          width: 110,
                          child: CupertinoPicker(
                            magnification: 1.2,
                            squeeze: 1.2,
                            useMagnifier: true,
                            itemExtent: 40,
                            diameterRatio: 1.1,
                            onSelectedItemChanged: (int index) {
                              setState(() {
                                selectedMonth = index + 1;
                                _updateSelectedDate();
                              });
                            },
                            scrollController: FixedExtentScrollController(
                              initialItem: selectedMonth - 1,
                            ),
                            children: List<Widget>.generate(12, (int index) {
                              return Center(
                                child: Text(
                                  DateFormat(
                                    'MMMM',
                                  ).format(DateTime(2025, index + 1)),
                                  style: const TextStyle(fontSize: 16),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: CupertinoPicker(
                            magnification: 1.2,
                            squeeze: 1.2,
                            useMagnifier: true,
                            itemExtent: 40,
                            diameterRatio: 1.1,
                            onSelectedItemChanged: (int index) {
                              setState(() {
                                selectedYear = minYear + index;
                                _updateSelectedDate();
                              });
                            },
                            scrollController: FixedExtentScrollController(
                              initialItem: selectedYear - minYear,
                            ),
                            children: List<Widget>.generate(
                              maxYear - minYear + 1,
                              (int index) {
                                final year = minYear + index;
                                return Center(
                                  child: Text(
                                    '$year',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: year == 2025
                                          ? ApplicationColors.primary
                                          : Colors.black,
                                      fontWeight: year == 2025
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'This helps us calculate your cycle and\npredict future periods.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CycleDurationPage(
                      selectedAge: widget.selectedAge,
                      selectedDate: selectedDate,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}

class CycleDurationPage extends StatefulWidget {
  final int selectedAge;
  final DateTime selectedDate;

  const CycleDurationPage({
    super.key,
    required this.selectedAge,
    required this.selectedDate,
  });

  @override
  _CycleDurationPageState createState() => _CycleDurationPageState();
}

class _CycleDurationPageState extends State<CycleDurationPage> {
  int selectedCycleDuration = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cycle Duration'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Average cycle duration?',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 200,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: CupertinoPicker(
                      magnification: 1.2,
                      squeeze: 1.2,
                      useMagnifier: true,
                      itemExtent: 40,
                      diameterRatio: 1.1,
                      onSelectedItemChanged: (int index) {
                        setState(() {
                          selectedCycleDuration = 20 + index;
                        });
                      },
                      children: List<Widget>.generate(26, (int index) {
                        return Center(
                          child: Text(
                            '${20 + index} days',
                            style: const TextStyle(fontSize: 18),
                          ),
                        );
                      }),
                      scrollController: FixedExtentScrollController(
                        initialItem: 8,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'The average menstrual cycle is 28 days,\nbut can range from 21 to 40 days.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PeriodLengthPage(
                      selectedAge: widget.selectedAge,
                      selectedDate: widget.selectedDate,
                      selectedCycleDuration: selectedCycleDuration,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}

class PeriodLengthPage extends StatefulWidget {
  final int selectedAge;
  final DateTime selectedDate;
  final int selectedCycleDuration;

  const PeriodLengthPage({
    super.key,
    required this.selectedAge,
    required this.selectedDate,
    required this.selectedCycleDuration,
  });

  @override
  _PeriodLengthPageState createState() => _PeriodLengthPageState();
}

class _PeriodLengthPageState extends State<PeriodLengthPage> {
  int selectedPeriodLength = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Period Length'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Average period length?',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 200,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: CupertinoPicker(
                      magnification: 1.2,
                      squeeze: 1.2,
                      useMagnifier: true,
                      itemExtent: 40,
                      diameterRatio: 1.1,
                      onSelectedItemChanged: (int index) {
                        setState(() {
                          selectedPeriodLength = index + 1;
                        });
                      },
                      children: List<Widget>.generate(10, (int index) {
                        return Center(
                          child: Text(
                            '${index + 1} days',
                            style: const TextStyle(fontSize: 18),
                          ),
                        );
                      }),
                      scrollController: FixedExtentScrollController(
                        initialItem: 4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Most periods last 3-7 days,\nbut everyone is different.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            color: Color(0xFFD4EDDA),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Color(0xFF28A745),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Setup Complete!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: ApplicationColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Your period tracking is now set up\nwith your preferences.',
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text('Go to Dashboard'),
                        ),
                      ],
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Complete'),
            ),
          ),
        ],
      ),
    );
  }
}
