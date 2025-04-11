import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 18, 174, 202),
        ),
      ),
      home: const MyHomePage(title: 'Bloom App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? today;
  DateTime focusedDay = DateTime.now();
  Map<DateTime, List<String>> events = {};
  TextEditingController _eventController = TextEditingController();
  final ValueNotifier<List<String>> _onDaySelected = ValueNotifier([]);

  void _onDaySelectedMethod(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
      focusedDay = focusDay;
      if (mounted) {
        _onDaySelected.value = _getEventsForDay(day);
      }
    });
  }

  void _addEvent(String eventText) {
    if (today != null && eventText.isNotEmpty) {
      setState(() {
        events.putIfAbsent(today!, () => []).add(eventText);
        if (mounted) {
          _onDaySelected.value = _getEventsForDay(today!);
        }
      });
    }
    _eventController.clear();
  }

  List<String> _getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          today != null
              ? Text(
                "Selected Date: ${DateFormat('yyyy-MM-dd').format(today!)}",
              )
              : const Text("Luteal Phase"),
          TableCalendar(
            availableGestures: AvailableGestures.horizontalSwipe,
            focusedDay: focusedDay,
            firstDay: DateTime(2023, 1, 1),
            lastDay: DateTime(2025, 12, 31),
            eventLoader: _getEventsForDay,
            onDaySelected: _onDaySelectedMethod,
            selectedDayPredicate: (day) {
              return isSameDay(today, day);
            },
          ),
          Expanded(
            child: ValueListenableBuilder<List<String>>(
              valueListenable: _onDaySelected,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(value[index]));
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                scrollable: true,
                title: const Text("Event Name"),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _eventController,
                    decoration: const InputDecoration(hintText: "Enter event"),
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      if (_eventController.text.isNotEmpty) {
                        _addEvent(_eventController.text);
                      }
                      Navigator.of(context).pop();
                    },
                    child: const Text("Submit"),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// та которая

// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:intl/intl.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: const Color.fromARGB(255, 18, 174, 202),
//         ),
//       ),
//       home: const MyHomePage(title: 'Bloom App'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // Variables for date selection
//   DateTime? selectedDay;
//   DateTime focusedDay = DateTime.now();

//   // Variables for range selection
//   DateTime? rangeStart;
//   DateTime? rangeEnd;
//   RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

//   void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
//     setState(() {
//       this.selectedDay = selectedDay;
//       this.focusedDay = focusedDay;
//       // Clear range selection when single day is selected
//       rangeStart = null;
//       rangeEnd = null;
//     });
//   }

//   void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
//     setState(() {
//       // Set selectedDay to null when range selection is active
//       selectedDay = null;
//       // Update range start and end dates
//       rangeStart = start;
//       rangeEnd = end;
//       this.focusedDay = focusedDay;

//       // Print the selected range for demonstration
//       if (start != null && end != null) {
//         print(
//           'Range selected: ${DateFormat('yyyy-MM-dd').format(start)} to ${DateFormat('yyyy-MM-dd').format(end)}',
//         );
//       } else if (start != null) {
//         print(
//           'Range start selected: ${DateFormat('yyyy-MM-dd').format(start)}',
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//         centerTitle: true,
//       ),
//       body: Center(child: _buildContent()),
//     );
//   }

//   Widget _buildContent() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         // Display selected date or range information
//         if (selectedDay != null)
//           Text(
//             "Selected Date: ${DateFormat('yyyy-MM-dd').format(selectedDay!)}",
//           )
//         else if (rangeStart != null && rangeEnd != null)
//           Text(
//             "Selected Range: ${DateFormat('yyyy-MM-dd').format(rangeStart!)} to ${DateFormat('yyyy-MM-dd').format(rangeEnd!)}",
//           )
//         else if (rangeStart != null)
//           Text("Range Start: ${DateFormat('yyyy-MM-dd').format(rangeStart!)}")
//         else
//           const Text("Luteal Phase"),

//         Container(
//           child: TableCalendar(
//             availableGestures: AvailableGestures.all,
//             focusedDay: focusedDay,
//             firstDay: DateTime(2023, 1, 1),
//             lastDay: DateTime(2025, 12, 31),

//             // Single date selection
//             selectedDayPredicate: (day) {
//               return isSameDay(selectedDay, day);
//             },
//             onDaySelected: _onDaySelected,

//             // Range selection
//             rangeStartDay: rangeStart,
//             rangeEndDay: rangeEnd,
//             rangeSelectionMode: rangeSelectionMode,
//             onRangeSelected: _onRangeSelected,

//             // Calendar formatting
//             calendarStyle: const CalendarStyle(
//               rangeHighlightColor: Colors.blue,
//               rangeStartDecoration: BoxDecoration(
//                 color: Colors.blue,
//                 shape: BoxShape.circle,
//               ),
//               rangeEndDecoration: BoxDecoration(
//                 color: Colors.blue,
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
