import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PeriodTrackerApp extends StatelessWidget {
  const PeriodTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Period Tracker',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const AccountScreen(),
    );
  }
}

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int cycleLength = 28;
  int periodLength = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 16),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.settings, color: Colors.grey[500]),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: const AssetImage(
                      'assets/images/main/didi.jpg',
                    ),
                    backgroundColor: Colors.grey[200],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Diana Daniiarova',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'diana.di.daniiarova@gmail.com',
                        style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Cycle Settings',
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
              const SizedBox(height: 8),
              SettingsSection(
                items: [
                  SettingsItem(
                    title: 'Cycle Length',
                    subtitle: '$cycleLength days',
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CycleDurationPage(
                            selectedAge: 30,
                            selectedDate: DateTime.now(),
                            initialCycleDuration: cycleLength,
                          ),
                        ),
                      );
                      if (result != null) {
                        setState(() {
                          cycleLength = result;
                        });
                      }
                    },
                  ),
                  SettingsItem(
                    title: 'Period Length',
                    subtitle: '$periodLength days',
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PeriodLengthPage(
                            selectedAge: 30,
                            selectedDate: DateTime.now(),
                            selectedCycleDuration: cycleLength,
                            initialPeriodLength: periodLength,
                          ),
                        ),
                      );
                      if (result != null) {
                        setState(() {
                          periodLength = result;
                        });
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'App Settings',
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
              const SizedBox(height: 8),
              SettingsSection(
                items: [
                  SettingsItem(
                    title: 'Notifications',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: const Color(0xFFFF85B3),
                    ),
                  ),
                  SettingsItem(
                    title: 'Dark Mode',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                      activeColor: const Color(0xFFFF85B3),
                    ),
                  ),
                  SettingsItem(title: 'Privacy Settings'),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Support',
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
              const SizedBox(height: 8),
              SettingsSection(
                items: [
                  SettingsItem(title: 'Help Center'),
                  SettingsItem(title: 'Contact Support'),
                  SettingsItem(title: 'Privacy Policy'),
                ],
              ),
              const SizedBox(height: 24),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final List<SettingsItem> items;

  const SettingsSection({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: items
              .asMap()
              .entries
              .map(
                (entry) => Column(
                  children: [
                    ListTile(
                      title: Text(
                        entry.value.title,
                        style: const TextStyle(fontSize: 14),
                      ),
                      subtitle: entry.value.subtitle != null
                          ? Text(
                              entry.value.subtitle!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            )
                          : null,
                      trailing: entry.value.trailing ??
                          const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: entry.value.onTap,
                    ),
                    if (entry.key < items.length - 1)
                      Divider(height: 1, color: Colors.grey[100]),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class SettingsItem {
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  SettingsItem({
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  });
}

class CycleDurationPage extends StatefulWidget {
  final int selectedAge;
  final DateTime selectedDate;
  final int initialCycleDuration;

  const CycleDurationPage({
    super.key,
    required this.selectedAge,
    required this.selectedDate,
    required this.initialCycleDuration,
  });

  @override
  _CycleDurationPageState createState() => _CycleDurationPageState();
}

class _CycleDurationPageState extends State<CycleDurationPage> {
  late int selectedCycleDuration;

  @override
  void initState() {
    super.initState();
    selectedCycleDuration = widget.initialCycleDuration;
  }

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
                        initialItem: widget.initialCycleDuration - 20,
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
                Navigator.pop(context, selectedCycleDuration);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Save'),
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
  final int initialPeriodLength;

  const PeriodLengthPage({
    super.key,
    required this.selectedAge,
    required this.selectedDate,
    required this.selectedCycleDuration,
    required this.initialPeriodLength,
  });

  @override
  _PeriodLengthPageState createState() => _PeriodLengthPageState();
}

class _PeriodLengthPageState extends State<PeriodLengthPage> {
  late int selectedPeriodLength;

  @override
  void initState() {
    super.initState();
    selectedPeriodLength = widget.initialPeriodLength;
  }

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
                        initialItem: widget.initialPeriodLength - 1,
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
                Navigator.pop(context, selectedPeriodLength);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Save'),
            ),
          ),
        ],
      ),
    );
  }
}
