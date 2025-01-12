import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/configs/constants/priority.dart';

part 'add_task_event.dart';
part 'add_task_state.dart';

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  AddTaskBloc() : super (AddTaskState()){
    on<ChangeDate>(_changeDate);
    on<ChangeTime>(_changeTime);
    on<ChangePriority>(_changePriority);

  }
  void _changeDate(ChangeDate event,Emitter<AddTaskState> emit){
    emit(state.copyWith(date: event.date));
  }
  void _changeTime(ChangeTime event,Emitter<AddTaskState> emit){
    emit(state.copyWith(time: event.time));
  }
  void _changePriority(ChangePriority event, Emitter<AddTaskState> emit){
    emit(state.copyWith(priority: event.priority));
  }
  }

