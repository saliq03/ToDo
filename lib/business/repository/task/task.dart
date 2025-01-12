import 'package:dartz/dartz.dart';
import 'package:todo/data/models/task.dart';

abstract class TaskRepository{
  Future<Either> AddTask(TaskModel task);
}