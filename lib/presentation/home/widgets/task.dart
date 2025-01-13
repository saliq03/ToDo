
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/configs/constants/priority.dart';
import 'package:todo/data/models/task.dart';

import '../../../core/configs/colors/app_colors.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key,required this.task});
final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height:20,width: 20,
                  decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: AppColors.primary,
                          width: 3
                      )
                  ),
                ),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(task.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Text("01 may ",style: TextStyle(fontSize: 16,color: Colors.grey.shade600),)
                  ],
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
              decoration: BoxDecoration(
                  color: task.priority==Priority.high?Colors.red:
                   task.priority==Priority.medium?Colors.yellow:Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text(task.priority,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
            )


          ],
        ),
      ),
    );
  }
}
