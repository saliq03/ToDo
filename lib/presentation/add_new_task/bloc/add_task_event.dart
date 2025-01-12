part of 'add_task_bloc.dart';

class AddTaskEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class ChangeDate extends AddTaskEvent{
  final DateTime date;
  ChangeDate({required this.date});

  @override
  List<Object?> get props => [date];
}
class ChangeTime extends AddTaskEvent{
  final TimeOfDay time;
  ChangeTime({required this.time});

  @override
  List<Object?> get props => [time];
}
class ChangePriority extends AddTaskEvent{
  final Priority priority;
  ChangePriority({required this.priority});

  @override
  List<Object?> get props => [priority];
}
