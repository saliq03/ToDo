part of 'add_task_bloc.dart';

class AddTaskState extends Equatable{
  final String title;
  final String description;
   DateTime?  date;
   TimeOfDay? time;
  final Priority priority;

  AddTaskState({
    this.title='',
    this.description='',
    this.date,
    this.time,
    this.priority=Priority.low});
  AddTaskState copyWith({String? title, String? description,DateTime?  date,TimeOfDay? time, Priority? priority}){
    return AddTaskState(
      title: title?? this.title,
      description: description?? this.description,
      date: date?? this.date,
      time: time?? this.time,
      priority: priority?? this.priority
    );
  }

  @override
  List<Object?> get props => [title,description,date,time,priority];

}
