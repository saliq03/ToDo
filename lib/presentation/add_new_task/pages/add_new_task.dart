import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/common/widgets/buttons/basic_app_button.dart';
import 'package:todo/core/configs/colors/app_colors.dart';
import 'package:todo/presentation/add_new_task/bloc/add_task_bloc.dart';
import 'package:todo/presentation/add_new_task/widgets/date.dart';
import 'package:todo/presentation/add_new_task/widgets/description.dart';
import 'package:todo/presentation/add_new_task/widgets/priority.dart';
import 'package:todo/presentation/add_new_task/widgets/time.dart';
import 'package:todo/presentation/add_new_task/widgets/title.dart';
import 'package:todo/core/configs/constants/priority.dart';

class AddNewTaskPage extends StatelessWidget {
  AddNewTaskPage({super.key});

  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: const Text("Add New Task", style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined, color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            TitleWidget(),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<AddTaskBloc, AddTaskState>(
                  builder: (context, state) {
                    return DateWidget(selectedDate: state.date);
                  },
                ),
                BlocBuilder<AddTaskBloc, AddTaskState>(
                  builder: (context, state) {
                    return TimeWidget(selectedTime: state.time);
                  },
                )
              ],
            ),
            const SizedBox(height: 10,),
            DescriptionWidget(),
            const SizedBox(height: 10,),
            BlocBuilder<AddTaskBloc, AddTaskState>(
              builder: (context, state) {
                return PriorityWidget(selectedValue: state.priority);
              },
            ),
            const SizedBox(height: 40,),
            BasicAppButton(title: "Save", onPress: (){},
            width: 300,
            height: 60,)


          ],
        ),
      ),
    );
  }


}
