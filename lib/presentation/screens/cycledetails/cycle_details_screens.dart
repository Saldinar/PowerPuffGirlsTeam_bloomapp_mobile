import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class CycleDetailsScreens extends StatelessWidget {
  const CycleDetailsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Period Tracker',
      theme: ThemeData(
        primaryColor: const Color(0xFF4361EE),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.grey),
          labelLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF4361EE),
            foregroundColor: Colors.white,
            disabledBackgroundColor: Colors.grey.shade300,
            disabledForegroundColor: Colors.grey.shade600,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 14),
            elevation: 2,
          ),
        ),
      ),
      home: const AgeSelectionPage(),
    );
  }
}

// Age Selection Page with iOS-style wheel picker
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
      appBar: AppBar(
        title: const Text('Age Selection'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
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
                  // iOS-style wheel picker for age
                  Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      // Add subtle border
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: CupertinoPicker(
                      magnification: 1.2,
                      squeeze: 1.2,
                      useMagnifier: true,
                      itemExtent: 40,
                      // This creates the 3D wheel effect
                      diameterRatio: 1.1,
                      onSelectedItemChanged: (int index) {
                        setState(() {
                          selectedAge = index + 15;
                        });
                      },
                      // Age range: 15-50
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
                      // Initial selection
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

// Last Period Page with iOS-style wheel picker
class LastPeriodPage extends StatefulWidget {
  final int selectedAge;

  const LastPeriodPage({super.key, required this.selectedAge});

  @override
  _LastPeriodPageState createState() => _LastPeriodPageState();
}

class _LastPeriodPageState extends State<LastPeriodPage> {
  // Default to current date
  late int selectedDay;
  late int selectedMonth;
  late int selectedYear;
  late DateTime selectedDate;

  // Years range from 2023 to 2027
  final int minYear = 2023;
  final int maxYear = 2027;

  @override
  void initState() {
    super.initState();

    // Initialize with current day/month and 2025 for year
    final now = DateTime.now();
    selectedDay = now.day;
    selectedMonth = now.month;
    selectedYear = 2025; // Default to 2025

    selectedDate = DateTime(selectedYear, selectedMonth, selectedDay);
  }

  void _updateSelectedDate() {
    // Validate day based on month/year (e.g., February constraints)
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
      appBar: AppBar(
        title: const Text('Last Period'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
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

                  // Date picker with day, month, year columns
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Day picker - iOS style
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
                            // Days 1-31
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

                        // Month picker - iOS style
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
                            // Months Jan-Dec
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

                        // Year picker - iOS style
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
                            // Years 2023-2027
                            children: List<Widget>.generate(
                              maxYear - minYear + 1,
                              (int index) {
                                final year = minYear + index;
                                return Center(
                                  child: Text(
                                    '$year',
                                    style: TextStyle(
                                      fontSize: 20,
                                      // Highlight 2025 in blue
                                      color: year == 2025
                                          ? const Color(0xFF4361EE)
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

// Cycle Duration Page with iOS-style wheel picker
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
      appBar: AppBar(
        title: const Text('Cycle Duration'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
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

                  // iOS-style wheel picker for cycle duration
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
                      // Cycle durations 20-45 days
                      children: List<Widget>.generate(26, (int index) {
                        return Center(
                          child: Text(
                            '${20 + index} days',
                            style: const TextStyle(fontSize: 18),
                          ),
                        );
                      }),
                      // Initial selection at 28 days
                      scrollController: FixedExtentScrollController(
                        initialItem: 8, // 28 - 20 = 8
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

// Period Length Page with iOS-style wheel picker
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
      appBar: AppBar(
        title: const Text('Period Length'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
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

                  // iOS-style wheel picker for period length
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
                      // Period lengths 1-10 days
                      children: List<Widget>.generate(10, (int index) {
                        return Center(
                          child: Text(
                            '${index + 1} days',
                            style: const TextStyle(fontSize: 18),
                          ),
                        );
                      }),
                      // Initial selection
                      scrollController: FixedExtentScrollController(
                        initialItem: 4, // 5 - 1 = 4
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
                          style: Theme.of(context).textTheme.titleLarge,
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
                            // Placeholder for dashboard navigation
                            // Navigator.push(context, MaterialPageRoute(builder: (_) => DashboardPage()));
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
