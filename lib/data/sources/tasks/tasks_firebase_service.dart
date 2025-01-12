import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:todo/data/models/task.dart';
import 'package:todo/data/sources/user_prefrence/user_prefrence.dart';

abstract class TasksFirebaseService {
  Future<Either> UploadTask(TaskModel task);
}

class TasksFirebaseServiceImpl extends TasksFirebaseService{
  @override
  Future<Either> UploadTask(TaskModel task) async {
    String? email=await UserPrefrences().getUser();
    try{
      await FirebaseFirestore.instance.
      collection("Users").
      doc(email).
      collection("Tasks").
      doc(task.id).
      set(task.toJson());
      return const Right('Task Added Successfully');
    }
    catch(e){
      return Left('Something went wrong\n $e');
      }
    }
  }

