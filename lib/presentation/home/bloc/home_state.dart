part of 'home_bloc.dart';

 class HomeState extends Equatable{

   final List<TaskModel> today,tomorrow,thisWeek,thisMonth,other;
   final Status status;

  HomeState({
    this.today=const [],
    this.tomorrow=const [],
    this.thisWeek=const [],
    this.thisMonth=const [],
    this.other=const [],
    this.status=Status.loading});

  HomeState copyWith({List<TaskModel>? today, List<TaskModel>? tomorrow, List<TaskModel>? thisWeek, List<TaskModel>? thisMonth, List<TaskModel>? other,Status? status}){
    return HomeState(
      today: today?? this.today,
      tomorrow: tomorrow?? this.tomorrow,
      thisWeek: thisWeek?? this.thisWeek,
      thisMonth: thisMonth??this.thisMonth,
      other: other?? this.other,
      status: status?? this.status
    );
}


  @override
  List<Object?> get props => [today,tomorrow,thisWeek,thisMonth,other,status];

 }


