import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

// Task Class
class Task {
  final String title;
  final String time;
  final String energy;
  final String reminder;
  final DateTime date;

  Task({
    required this.title,
    required this.time,
    required this.energy,
    required this.date,
    this.reminder = '15 min before',
  });

  String get duration {
    final now = DateTime.now();
    final taskTime = DateFormat('HH:mm').parse(time);
    final taskDateTime = DateTime(
      date.year,
      date.month,
      date.day,
      taskTime.hour,
      taskTime.minute,
    );

    final difference = taskDateTime.difference(now);
    if (difference.isNegative) {
      return 'Past';
    } else if (difference.inMinutes < 60) {
      return 'In ${difference.inMinutes} min';
    } else {
      return 'In ${difference.inHours} hour${difference.inHours > 1 ? 's' : ''}';
    }
  }
}

// TaskCard Widget
class TaskCard extends StatelessWidget {
  final Task task;
  final VoidCallback onTap;

  const TaskCard({Key? key, required this.task, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color energyColor;
    switch (task.energy) {
      case 'High':
        energyColor = const Color(0xFFFF85B3);
        break;
      case 'Medium':
        energyColor = Colors.orange;
        break;
      case 'Low':
        energyColor = Colors.blue;
        break;
      default:
        energyColor = Colors.grey;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.time,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  task.duration,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Container(
              width: 4,
              height: 50,
              decoration: BoxDecoration(
                color: energyColor,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: energyColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          task.energy,
                          style: TextStyle(color: energyColor, fontSize: 12),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.notifications_outlined,
                        size: 14,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 4),
                      Text(
                        task.reminder,
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// AddTaskModal Widget
class AddTaskModal extends StatefulWidget {
  final DateTime selectedDate;
  final Function(Task) onSave;
  final Task? taskToEdit;

  const AddTaskModal({
    Key? key,
    required this.selectedDate,
    required this.onSave,
    this.taskToEdit,
  }) : super(key: key);

  @override
  _AddTaskModalState createState() => _AddTaskModalState();
}

class _AddTaskModalState extends State<AddTaskModal> {
  late final TextEditingController _taskNameController;
  late final TextEditingController _timeController;
  late String _selectedEnergyLevel;
  late String _selectedReminder;

  @override
  void initState() {
    super.initState();
    _taskNameController = TextEditingController(
      text: widget.taskToEdit?.title ?? '',
    );
    _timeController = TextEditingController(
      text: widget.taskToEdit != null
          ? DateFormat('h:mm a')
              .format(DateFormat('HH:mm').parse(widget.taskToEdit!.time))
          : DateFormat('h:mm a').format(DateTime.now()),
    );
    _selectedEnergyLevel = widget.taskToEdit?.energy ?? 'High';
    _selectedReminder = widget.taskToEdit?.reminder ?? '15 min before';
  }

  @override
  void dispose() {
    _taskNameController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.taskToEdit == null ? 'Add New Task' : 'Edit Task',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _taskNameController,
            decoration: InputDecoration(
              labelText: 'Task Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Date',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  controller: TextEditingController(
                    text: DateFormat('yyyy-MM-dd').format(widget.selectedDate),
                  ),
                  readOnly: true,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextField(
                  controller: _timeController,
                  decoration: InputDecoration(
                    labelText: 'Time',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    final TimeOfDay? picked = await showTimePicker(
                      context: context,
                      initialTime: widget.taskToEdit != null
                          ? TimeOfDay.fromDateTime(
                              DateFormat('HH:mm')
                                  .parse(widget.taskToEdit!.time),
                            )
                          : TimeOfDay.now(),
                    );
                    if (picked != null) {
                      setState(() {
                        final now = DateTime.now();
                        final dt = DateTime(
                          now.year,
                          now.month,
                          now.day,
                          picked.hour,
                          picked.minute,
                        );
                        _timeController.text = DateFormat('h:mm a').format(dt);
                      });
                    }
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Energy Level',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedEnergyLevel = 'Low';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedEnergyLevel == 'Low'
                        ? const Color(0xFFFF85B3).withOpacity(0.1)
                        : Colors.grey[200],
                    foregroundColor: _selectedEnergyLevel == 'Low'
                        ? const Color(0xFFFF85B3)
                        : Colors.grey[600],
                  ),
                  child: const Text('Low'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedEnergyLevel = 'Medium';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedEnergyLevel == 'Medium'
                        ? const Color(0xFFFF85B3).withOpacity(0.1)
                        : Colors.grey[200],
                    foregroundColor: _selectedEnergyLevel == 'Medium'
                        ? const Color(0xFFFF85B3)
                        : Colors.grey[600],
                  ),
                  child: const Text('Medium'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedEnergyLevel = 'High';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedEnergyLevel == 'High'
                        ? const Color(0xFFFF85B3).withOpacity(0.1)
                        : Colors.grey[200],
                    foregroundColor: _selectedEnergyLevel == 'High'
                        ? const Color(0xFFFF85B3)
                        : Colors.grey[600],
                  ),
                  child: const Text('High'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Reminder',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: _selectedReminder,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            items: const [
              '5 min before',
              '10 min before',
              '15 min before',
              '30 min before',
              '1 hour before',
            ].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  _selectedReminder = newValue;
                });
              }
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_taskNameController.text.isNotEmpty) {
                final DateTime time =
                    DateFormat('h:mm a').parse(_timeController.text);
                final String timeFormatted = DateFormat('HH:mm').format(time);

                final task = Task(
                  title: _taskNameController.text,
                  time: timeFormatted,
                  energy: _selectedEnergyLevel,
                  date: widget.selectedDate,
                  reminder: _selectedReminder,
                );
                widget.onSave(task);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2771FF),
              minimumSize: const Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Save Task',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime? today;
  DateTime focusedDay = DateTime.now();
  Map<DateTime, List<Task>> events = {};
  final ValueNotifier<List<Task>> _onDaySelected =
      ValueNotifier<List<Task>>([]);

  @override
  void initState() {
    super.initState();
    today = DateTime.now();
    _onDaySelected.value = _getEventsForDay(today!);
  }

  void _onDaySelectedMethod(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
      focusedDay = focusDay;
      if (mounted) {
        _onDaySelected.value = _getEventsForDay(day);
      }
    });
  }

  void _addTask(Task task) {
    if (today != null) {
      setState(() {
        final key = DateTime(today!.year, today!.month, today!.day);
        if (!events.containsKey(key)) {
          events[key] = [];
        }
        events[key]!.add(task);
        if (mounted) {
          _onDaySelected.value = _getEventsForDay(today!);
        }
      });
    }
  }

  void _updateTask(Task oldTask, Task newTask) {
    if (today != null) {
      setState(() {
        final key = DateTime(today!.year, today!.month, today!.day);
        if (events.containsKey(key)) {
          final taskIndex = events[key]!.indexOf(oldTask);
          if (taskIndex != -1) {
            events[key]![taskIndex] = newTask;
          }
        }
        if (mounted) {
          _onDaySelected.value = _getEventsForDay(today!);
        }
      });
    }
  }

  List<Task> _getEventsForDay(DateTime day) {
    final normalizedDay = DateTime(day.year, day.month, day.day);
    return events[normalizedDay] ?? [];
  }

  void _showAddTaskModal(BuildContext context, {Task? taskToEdit}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: AddTaskModal(
          selectedDate: today ?? DateTime.now(),
          onSave: (task) {
            if (taskToEdit == null) {
              _addTask(task);
            } else {
              _updateTask(taskToEdit, task);
            }
            Navigator.pop(context);
          },
          taskToEdit: taskToEdit,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MMMM d');
    String todayFormatted = today != null ? dateFormat.format(today!) : '';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Bloom App'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableCalendar(
            availableGestures: AvailableGestures.horizontalSwipe,
            focusedDay: focusedDay,
            firstDay: DateTime(2023, 1, 1),
            lastDay: DateTime(2025, 12, 31),
            eventLoader: (day) => _getEventsForDay(day),
            onDaySelected: _onDaySelectedMethod,
            selectedDayPredicate: (day) {
              return isSameDay(today, day);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Today\'s Tasks ($todayFormatted)',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: ValueListenableBuilder<List<Task>>(
              valueListenable: _onDaySelected,
              builder: (context, tasks, _) {
                if (tasks.isEmpty) {
                  return const Center(child: Text('No tasks for today'));
                }
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: tasks.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return TaskCard(
                      task: task,
                      onTap: () => _showAddTaskModal(context, taskToEdit: task),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTaskModal(context),
        backgroundColor: const Color(0xFF2771FF),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
