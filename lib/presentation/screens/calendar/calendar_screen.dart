import 'package:bloom/domain/entity/user/user_request_entity.dart';
import 'package:bloom/presentation/bloc/cycle/cycle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

// Enums and Extensions
enum CyclePhase { menstrual, follicular, ovulation, luteal }

enum EnergyLevel { low, medium, high }

extension CyclePhaseExtension on CyclePhase {
  Color get color {
    switch (this) {
      case CyclePhase.menstrual:
        return const Color(0xFFFFB6C1).withOpacity(0.3);
      case CyclePhase.follicular:
        return const Color(0xFFADD8E6).withOpacity(0.3);
      case CyclePhase.ovulation:
        return const Color(0xFFDDA0DD).withOpacity(0.3);
      case CyclePhase.luteal:
        return const Color(0xFFFFDAB9).withOpacity(0.3);
    }
  }

  String get name {
    switch (this) {
      case CyclePhase.menstrual:
        return 'Menstrual';
      case CyclePhase.follicular:
        return 'Follicular';
      case CyclePhase.ovulation:
        return 'Ovulation';
      case CyclePhase.luteal:
        return 'Luteal';
    }
  }
}

extension EnergyLevelExtension on EnergyLevel {
  String get name {
    switch (this) {
      case EnergyLevel.low:
        return 'Low Energy';
      case EnergyLevel.medium:
        return 'Medium Energy';
      case EnergyLevel.high:
        return 'High Energy';
    }
  }

  Color get color {
    switch (this) {
      case EnergyLevel.low:
        return const Color(0xFFF44336).withOpacity(0.2);
      case EnergyLevel.medium:
        return const Color(0xFFFFC107).withOpacity(0.2);
      case EnergyLevel.high:
        return const Color(0xFF4CAF50).withOpacity(0.2);
    }
  }

  Color get textColor {
    switch (this) {
      case EnergyLevel.low:
        return const Color(0xFFC62828);
      case EnergyLevel.medium:
        return const Color(0xFFFF8F00);
      case EnergyLevel.high:
        return const Color(0xFF2E7D32);
    }
  }
}

// Task Class
class Task {
  final String title;
  final DateTime dateTime;
  final EnergyLevel energyLevel;
  final Duration notificationBefore;

  Task({
    required this.title,
    required this.dateTime,
    required this.energyLevel,
    required this.notificationBefore,
  });
}

// CalendarScreen
class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late CalendarFormat _calendarFormat;
  late DateTime _focusedDay;
  late DateTime _selectedDay;
  final DateTime _currentDay = DateTime.now();

  final int cycleLength = 28;
  final int periodLength = 7;
  final DateTime cycleStartDate = DateTime(2025, 4, 1);

  late List<Task> tasks;
  late CyclePhase currentPhase;
  late int currentPhaseDay;

  @override
  void initState() {
    super.initState();
    _calendarFormat = CalendarFormat.month;
    _focusedDay = DateTime.now();
    _selectedDay = DateTime.now();

    tasks = [
      Task(
        title: 'Morning Yoga Session',
        dateTime: DateTime(2025, 4, 7, 9, 0),
        energyLevel: EnergyLevel.high,
        notificationBefore: const Duration(minutes: 15),
      ),
      Task(
        title: 'Lunch with Sarah',
        dateTime: DateTime(2025, 4, 7, 12, 30),
        energyLevel: EnergyLevel.medium,
        notificationBefore: const Duration(minutes: 30),
      ),
      Task(
        title: 'Project Meeting',
        dateTime: DateTime(2025, 4, 7, 15, 0),
        energyLevel: EnergyLevel.medium,
        notificationBefore: const Duration(minutes: 10),
      ),
      Task(
        title: 'Evening Meditation',
        dateTime: DateTime(2025, 4, 7, 19, 0),
        energyLevel: EnergyLevel.low,
        notificationBefore: const Duration(minutes: 5),
      ),
    ];

    calculateCurrentPhase();

    // TODO(someone): we need to know the cycle length and period length before colling this event
    // final request = UserRequestEntity(
    //   age: 25,
    //   cycleLength: cycleLength,
    //   periodLength: periodLength,
    //   lastPeriodDate: '',
    // );
    // context.read<CycleBloc>().add(FetchCycleDetails(request: request));
  }

  void calculateCurrentPhase() {
    final daysSinceCycleStart = _currentDay.difference(cycleStartDate).inDays % cycleLength;

    if (daysSinceCycleStart < periodLength) {
      currentPhase = CyclePhase.menstrual;
    } else if (daysSinceCycleStart < 14) {
      currentPhase = CyclePhase.follicular;
    } else if (daysSinceCycleStart < 21) {
      currentPhase = CyclePhase.ovulation;
    } else {
      currentPhase = CyclePhase.luteal;
    }

    if (currentPhase == CyclePhase.menstrual) {
      currentPhaseDay = daysSinceCycleStart + 1;
    } else if (currentPhase == CyclePhase.follicular) {
      currentPhaseDay = daysSinceCycleStart - periodLength + 1;
    } else if (currentPhase == CyclePhase.ovulation) {
      currentPhaseDay = daysSinceCycleStart - 14 + 1;
    } else {
      currentPhaseDay = daysSinceCycleStart - 21 + 1;
    }
  }

  CyclePhase getPhaseForDay(DateTime day) {
    final daysSinceCycleStart = day.difference(cycleStartDate).inDays % cycleLength;

    if (daysSinceCycleStart < periodLength) {
      return CyclePhase.menstrual;
    } else if (daysSinceCycleStart < 14) {
      return CyclePhase.follicular;
    } else if (daysSinceCycleStart < 21) {
      return CyclePhase.ovulation;
    } else {
      return CyclePhase.luteal;
    }
  }

  List<Task> getTasksForDay(DateTime day) {
    return tasks
        .where(
          (task) => task.dateTime.year == day.year && task.dateTime.month == day.month && task.dateTime.day == day.day,
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 80),
                children: [
                  _buildCalendarNavigation(),
                  _buildCalendar(),
                  _buildLegend(),
                  _buildTaskList(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: _showAddTaskModal,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.shade100)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFFF85B3).withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '${currentPhase.name} Phase (Day $currentPhaseDay)',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          GestureDetector(
            onTap: _showPhaseInfoModal,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.question_mark,
                size: 18,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendarNavigation() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('MMMM yyyy').format(_focusedDay),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              _buildNavigationButton(
                icon: Icons.arrow_back_ios,
                onPressed: () {
                  setState(() {
                    _focusedDay = DateTime(
                      _focusedDay.year,
                      _focusedDay.month - 1,
                      _focusedDay.day,
                    );
                  });
                },
              ),
              const SizedBox(width: 8),
              _buildNavigationButton(
                icon: Icons.arrow_forward_ios,
                onPressed: () {
                  setState(() {
                    _focusedDay = DateTime(
                      _focusedDay.year,
                      _focusedDay.month + 1,
                      _focusedDay.day,
                    );
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(icon, size: 16, color: Colors.grey.shade500),
      ),
    );
  }

  Widget _buildCalendar() {
    return TableCalendar(
      firstDay: DateTime.utc(2025, 1, 1),
      lastDay: DateTime.utc(2025, 12, 31),
      focusedDay: _focusedDay,
      calendarFormat: _calendarFormat,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
      calendarStyle: CalendarStyle(
        outsideDaysVisible: true,
        defaultTextStyle: const TextStyle(color: Colors.black),
        weekendTextStyle: const TextStyle(color: Colors.black),
        todayDecoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          shape: BoxShape.circle,
        ),
      ),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) {
          final phase = getPhaseForDay(day);
          return Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: phase.color,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                day.day.toString(),
                style: const TextStyle(color: Colors.black),
              ),
            ),
          );
        },
        todayBuilder: (context, day, focusedDay) {
          return Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                day.day.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        markerBuilder: (context, day, events) {
          final tasksForDay = getTasksForDay(day);
          if (tasksForDay.isNotEmpty) {
            return Positioned(
              bottom: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  tasksForDay.length > 3 ? 3 : tasksForDay.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 1.5),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            );
          }
          return null;
        },
      ),
    );
  }

  Widget _buildLegend() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLegendItem(CyclePhase.menstrual),
          _buildLegendItem(CyclePhase.follicular),
          _buildLegendItem(CyclePhase.ovulation),
          _buildLegendItem(CyclePhase.luteal),
        ],
      ),
    );
  }

  Widget _buildLegendItem(CyclePhase phase) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: phase.color.withOpacity(1),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        const SizedBox(width: 4),
        Text(phase.name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildTaskList() {
    final tasksForSelectedDay = getTasksForDay(_selectedDay);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today (${DateFormat('MMMM d').format(_selectedDay)})',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          tasksForSelectedDay.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      'No tasks scheduled for this day',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                )
              : Column(
                  children: tasksForSelectedDay.map((task) {
                    return TaskCard(
                      task: task,
                      onTap: () => _showAddTaskModal(taskToEdit: task),
                    );
                  }).toList(),
                ),
        ],
      ),
    );
  }

  void _showAddTaskModal({Task? taskToEdit}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (context) => AddTaskModal(
        selectedDate: _selectedDay,
        currentPhase: currentPhase,
        onTaskAdded: (task) {
          setState(() {
            if (taskToEdit == null) {
              tasks.add(task);
            } else {
              final index = tasks.indexOf(taskToEdit);
              if (index != -1) {
                tasks[index] = task;
              }
            }
          });
        },
        taskToEdit: taskToEdit,
      ),
    );
  }

  void _showPhaseInfoModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (context) => PhaseInfoModal(phase: currentPhase, phaseDay: currentPhaseDay),
    );
  }
}

// TaskCard Widget
class TaskCard extends StatelessWidget {
  final Task task;
  final VoidCallback onTap;

  const TaskCard({Key? key, required this.task, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final difference = task.dateTime.difference(now);
    final hoursRemaining = difference.inHours;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
          border: const Border(
            left: BorderSide(color: Color(0xFFFF85B3), width: 4),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('h:mm a').format(task.dateTime),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    difference.isNegative
                        ? 'Passed'
                        : 'In ${hoursRemaining > 0 ? '$hoursRemaining hours' : '${difference.inMinutes} minutes'}',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                  ),
                ],
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
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
                            color: task.energyLevel.color,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            task.energyLevel.name,
                            style: TextStyle(
                              fontSize: 10,
                              color: task.energyLevel.textColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${task.notificationBefore.inMinutes} min before',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// AddTaskModal
class AddTaskModal extends StatefulWidget {
  final DateTime selectedDate;
  final CyclePhase currentPhase;
  final Function(Task) onTaskAdded;
  final Task? taskToEdit;

  const AddTaskModal({
    Key? key,
    required this.selectedDate,
    required this.currentPhase,
    required this.onTaskAdded,
    this.taskToEdit,
  }) : super(key: key);

  @override
  State<AddTaskModal> createState() => _AddTaskModalState();
}

class _AddTaskModalState extends State<AddTaskModal> {
  final _taskNameController = TextEditingController();
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;
  EnergyLevel _selectedEnergy = EnergyLevel.high;
  bool _enableNotifications = true;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.taskToEdit?.dateTime ?? widget.selectedDate;
    _selectedTime = widget.taskToEdit != null ? TimeOfDay.fromDateTime(widget.taskToEdit!.dateTime) : TimeOfDay.now();
    _taskNameController.text = widget.taskToEdit?.title ?? '';
    _selectedEnergy = widget.taskToEdit?.energyLevel ?? EnergyLevel.high;
  }

  @override
  void dispose() {
    _taskNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            _buildHeader(),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildForm(),
                    const SizedBox(height: 16),
                    _buildPhaseTip(),
                    const SizedBox(height: 16),
                    _buildSaveButton(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.taskToEdit == null ? 'Add New Task' : 'Edit Task',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.close),
          ),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTaskNameField(),
        const SizedBox(height: 16),
        _buildDateTimeFields(),
        const SizedBox(height: 16),
        _buildEnergyLevelSelector(),
        const SizedBox(height: 16),
        _buildNotificationToggle(),
      ],
    );
  }

  Widget _buildTaskNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Task Name',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 4),
        TextField(
          controller: _taskNameController,
          decoration: InputDecoration(
            hintText: 'Enter task name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateTimeFields() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Date',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: _selectDate,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('yyyy-MM-dd').format(_selectedDate),
                        style: const TextStyle(fontSize: 14),
                      ),
                      Icon(
                        Icons.calendar_today,
                        size: 18,
                        color: Colors.grey.shade500,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Time',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: _selectTime,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _selectedTime.format(context),
                        style: const TextStyle(fontSize: 14),
                      ),
                      Icon(
                        Icons.access_time,
                        size: 18,
                        color: Colors.grey.shade500,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEnergyLevelSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Energy Level',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            _buildEnergyButton(EnergyLevel.low),
            const SizedBox(width: 8),
            _buildEnergyButton(EnergyLevel.medium),
            const SizedBox(width: 8),
            _buildEnergyButton(EnergyLevel.high),
          ],
        ),
      ],
    );
  }

  Widget _buildEnergyButton(EnergyLevel level) {
    final isSelected = _selectedEnergy == level;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedEnergy = level;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? Theme.of(context).colorScheme.primary : Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.circular(8),
            color: isSelected ? Theme.of(context).colorScheme.primary.withOpacity(0.1) : Colors.transparent,
          ),
          child: Center(
            child: Text(
              level.name.split(' ')[0],
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isSelected ? Theme.of(context).colorScheme.primary : Colors.grey.shade500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationToggle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Notifications',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Switch(
          value: _enableNotifications,
          onChanged: (value) {
            setState(() {
              _enableNotifications = value;
            });
          },
          activeColor: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }

  Widget _buildPhaseTip() {
    Color bgColor;
    String title;
    String tip;

    switch (widget.currentPhase) {
      case CyclePhase.menstrual:
        bgColor = const Color(0xFFFFB6C1).withOpacity(0.1);
        title = 'Menstrual Phase Tip';
        tip = 'During your period, energy levels can be lower. If a run feels too much, switch it up: \n '
            '🧘 ✨ Try gentle yoga, pilates, or a walk instead. They ease cramps and boost your mood without overloading your body.\n'
            '🥗 Period nutrition tips:\n'
            '🍃 — Eat more iron-rich foods (like spinach & apples)\n'
            '💧 — Stay hydrated\n'
            '🚫 — Avoid too much salt & sugar';
        break;
      case CyclePhase.follicular:
        bgColor = const Color(0xFFADD8E6).withOpacity(0.1);
        title = 'Follicular Phase Tip';
        tip = 'Your energy is increasing! This is a great time for planning, starting new projects, and socializing.';
        break;
      case CyclePhase.ovulation:
        bgColor = const Color(0xFFDDA0DD).withOpacity(0.1);
        title = 'Ovulation Phase Tip';
        tip = 'Your energy and focus are at their peak. Tackle challenging tasks and important meetings now.';
        break;
      case CyclePhase.luteal:
        bgColor = const Color(0xFFFFDAB9).withOpacity(0.1);
        title = 'Luteal Phase Tip';
        tip = 'As energy begins to decrease, focus on completing tasks and preparation. Listen to your body\'s needs.';
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                tip,
                style: const TextStyle(fontSize: 12, color: Colors.black87),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star_border,
                    size: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Move the tasks to other dates to align with your energy levels.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              if (widget.currentPhase == CyclePhase.menstrual) ...[
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        margin: const EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color: CyclePhase.follicular.color.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          'Follicular',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        margin: const EdgeInsets.only(left: 4),
                        decoration: BoxDecoration(
                          color: CyclePhase.ovulation.color.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          'Ovulation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ] else
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: widget.currentPhase.color.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    widget.currentPhase.name,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSaveButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _saveTask,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: const Text('Save Task'),
      ),
    );
  }

  Future<void> _selectDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  Future<void> _selectTime() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  void _saveTask() {
    if (_taskNameController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a task name'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final dateTime = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
      _selectedTime.hour,
      _selectedTime.minute,
    );

    final task = Task(
      title: _taskNameController.text.trim(),
      dateTime: dateTime,
      energyLevel: _selectedEnergy,
      notificationBefore: const Duration(minutes: 15),
    );

    widget.onTaskAdded(task);
    Navigator.pop(context);
  }
}

// PhaseInfoModal
class PhaseInfoModal extends StatelessWidget {
  final CyclePhase phase;
  final int phaseDay;

  const PhaseInfoModal({Key? key, required this.phase, required this.phaseDay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            _buildHeader(context),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildPhaseInfo(),
                    const SizedBox(height: 24),
                    _buildRecommendationsSection(context),
                    const SizedBox(height: 24),
                    _buildNutritionSection(context),
                    const SizedBox(height: 24),
                    _buildExerciseSection(context),
                    const SizedBox(height: 24),
                    _buildSelfCareSection(context),
                    const SizedBox(height: 24),
                    _buildCloseButton(context),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${phase.name} Phase',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.close),
          ),
        ),
      ],
    );
  }

  Widget _buildPhaseInfo() {
    String description;
    String hormones;

    switch (phase) {
      case CyclePhase.menstrual:
        description =
            'The menstrual phase marks the beginning of your cycle when the lining of your uterus is shed, resulting in your period. This typically lasts 3-7 days.';
        hormones =
            'Estrogen and progesterone levels are low at the beginning of this phase. Estrogen begins to rise toward the end.';
        break;
      case CyclePhase.follicular:
        description =
            'The follicular phase overlaps with your menstrual phase and continues until ovulation. During this time, follicles in your ovaries develop and prepare to release an egg.';
        hormones =
            'Estrogen levels rise steadily, while progesterone remains low. FSH (Follicle-Stimulating Hormone) is also active.';
        break;
      case CyclePhase.ovulation:
        description =
            'Ovulation is the release of a mature egg from an ovary. The egg then travels down the fallopian tube toward the uterus. This phase typically lasts 1-2 days.';
        hormones =
            'Estrogen peaks just before ovulation, followed by a surge in LH (Luteinizing Hormone) which triggers the release of the egg.';
        break;
      case CyclePhase.luteal:
        description =
            'The luteal phase follows ovulation and lasts until the start of your next period. If the egg is not fertilized, hormone levels drop, and the cycle begins again.';
        hormones =
            'Progesterone rises significantly and peaks midway through this phase. Estrogen levels also increase slightly before both hormones drop if pregnancy doesn\'t occur.';
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Day $phaseDay of this phase',
          style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
        ),
        const SizedBox(height: 16),
        Text(description, style: const TextStyle(fontSize: 14, height: 1.5)),
        const SizedBox(height: 16),
        const Text(
          'Hormonal Changes',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 8),
        Text(hormones, style: const TextStyle(fontSize: 14, height: 1.5)),
      ],
    );
  }

  Widget _buildSectionHeader(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey.shade700),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget _buildRecommendationsSection(BuildContext context) {
    List<String> recommendations;

    switch (phase) {
      case CyclePhase.menstrual:
        recommendations = [
          'Prioritize rest and relaxation',
          'Schedule lighter workload when possible',
          'Allow for extra sleep if needed',
          'Take warm baths to relieve cramps',
          'Use a heating pad for discomfort',
        ];
        break;
      case CyclePhase.follicular:
        recommendations = [
          'Great time for planning and starting new projects',
          'Schedule brainstorming sessions and creative work',
          'Take advantage of increasing energy levels',
          'Network and socialize',
          'Try new experiences',
        ];
        break;
      case CyclePhase.ovulation:
        recommendations = [
          'Schedule high-intensity workouts',
          'Take on challenging tasks requiring focus',
          'Plan important presentations or meetings',
          'Engage in social activities',
          'Make important decisions',
        ];
        break;
      case CyclePhase.luteal:
        recommendations = [
          'Focus on completing tasks rather than starting new ones',
          'Engage in detailed work requiring attention',
          'Prepare and organize for the next cycle',
          'Schedule time for self-reflection',
          'Listen to your body as energy begins to decrease',
        ];
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('Recommendations', Icons.lightbulb_outline),
        const SizedBox(height: 12),
        ...recommendations.map(
          (recommendation) => _buildBulletPoint(recommendation),
        ),
      ],
    );
  }

  Widget _buildNutritionSection(BuildContext context) {
    List<String> nutritionTips;

    switch (phase) {
      case CyclePhase.menstrual:
        nutritionTips = [
          'Iron-rich foods (leafy greens, red meat, legumes)',
          'Anti-inflammatory foods (berries, fatty fish, nuts)',
          'Dark chocolate (70%+ cacao)',
          'Warm, comforting foods',
          'Stay hydrated with water and herbal teas',
        ];
        break;
      case CyclePhase.follicular:
        nutritionTips = [
          'Fresh fruits and vegetables',
          'Fermented foods (yogurt, kimchi, sauerkraut)',
          'Lean proteins',
          'Whole grains',
          'Seeds (flax, pumpkin, chia)',
        ];
        break;
      case CyclePhase.ovulation:
        nutritionTips = [
          'Raw fruits and vegetables',
          'Foods rich in B vitamins (whole grains, eggs)',
          'Zinc-rich foods (oysters, pumpkin seeds)',
          'Light, fresh meals',
          'Antioxidant-rich foods (berries, dark chocolate)',
        ];
        break;
      case CyclePhase.luteal:
        nutritionTips = [
          'Complex carbohydrates (sweet potatoes, brown rice)',
          'Calcium-rich foods (dairy, fortified plant milks)',
          'Magnesium-rich foods (dark chocolate, nuts, seeds)',
          'Foods high in B6 (poultry, pistachios, bananas)',
          'Avoid caffeine, alcohol, and salty foods',
        ];
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('Nutrition', Icons.restaurant_outlined),
        const SizedBox(height: 12),
        ...nutritionTips.map((tip) => _buildBulletPoint(tip)),
      ],
    );
  }

  Widget _buildExerciseSection(BuildContext context) {
    List<String> exerciseTips;

    switch (phase) {
      case CyclePhase.menstrual:
        exerciseTips = [
          'Gentle yoga or stretching',
          'Walking',
          'Light swimming',
          'Restorative exercises',
          'Skip high-intensity workouts if uncomfortable',
        ];
        break;
      case CyclePhase.follicular:
        exerciseTips = [
          'Cardio exercises (running, cycling)',
          'Dance classes',
          'Group fitness activities',
          'Strength training with moderate weights',
          'Try new workout routines',
        ];
        break;
      case CyclePhase.ovulation:
        exerciseTips = [
          'High-intensity interval training (HIIT)',
          'Circuit training',
          'Heavy weightlifting',
          'Challenging workouts',
          'Team sports or competitive activities',
        ];
        break;
      case CyclePhase.luteal:
        exerciseTips = [
          'Pilates',
          'Moderate cardio',
          'Strength training',
          'Yoga flows',
          'Nature walks or hiking',
        ];
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('Exercise', Icons.fitness_center_outlined),
        const SizedBox(height: 12),
        ...exerciseTips.map((tip) => _buildBulletPoint(tip)),
      ],
    );
  }

  Widget _buildSelfCareSection(BuildContext context) {
    List<String> selfCareTips;

    switch (phase) {
      case CyclePhase.menstrual:
        selfCareTips = [
          'Prioritize rest and sleep',
          'Warm baths with Epsom salts',
          'Meditation and mindfulness',
          'Journal writing',
          'Cozy self-care rituals',
        ];
        break;
      case CyclePhase.follicular:
        selfCareTips = [
          'Social activities with friends',
          'Creative projects and hobbies',
          'Learning new skills',
          'Outdoor activities',
          'Vision boarding and goal setting',
        ];
        break;
      case CyclePhase.ovulation:
        selfCareTips = [
          'Public speaking or performance',
          'Leading meetings or workshops',
          'Networking events',
          'Dating or quality time with partner',
          'Bold self-expression through fashion or art',
        ];
        break;
      case CyclePhase.luteal:
        selfCareTips = [
          'Organization and planning',
          'Decluttering space',
          'Self-reflection and journaling',
          'Extra self-compassion',
          'Comfort activities and early nights',
        ];
        break;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('Self-Care', Icons.spa_outlined),
        const SizedBox(height: 12),
        ...selfCareTips.map((tip) => _buildBulletPoint(tip)),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '•',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCloseButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: const Text('Close'),
      ),
    );
  }
}
