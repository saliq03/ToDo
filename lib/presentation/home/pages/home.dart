import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo/core/configs/constants/status.dart';
import 'package:todo/presentation/add_new_task/pages/add_new_task.dart';
import 'package:todo/presentation/home/bloc/home_bloc.dart';
import 'package:todo/presentation/home/widgets/appbar.dart';
import 'package:todo/presentation/home/widgets/task.dart';
import 'package:todo/presentation/home/widgets/day_tasks.dart';


import '../../../core/configs/colors/app_colors.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 int _currentIndex=0;

 @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(FetchTasks());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            AppbarWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                 if(state.status ==Status.loading){
                   return const Center(child: CircularProgressIndicator());
                 }
                 else if(state.status==Status.error){
                   return const Center(child: Text("Something went wrong"));
                 }
                 else{
                   return Container(

                     height: MediaQuery.of(context).size.height*0.69,
                     child: SingleChildScrollView(
                       child: Column(
                         children: [
                          state.today.length>0? DayTasksWiget(list: state.today,title: "Today",):SizedBox.shrink(),
                           SizedBox(height: 20,),
                           state.tomorrow.length>0? DayTasksWiget(list: state.tomorrow,title: "Tomorrow",):SizedBox.shrink(),
                           SizedBox(height: 20,),
                           state.thisWeek.length>0? DayTasksWiget(list: state.thisWeek,title: "This week",):SizedBox.shrink(),
                           SizedBox(height: 20,),
                           state.thisMonth.length>0? DayTasksWiget(list: state.thisMonth,title: "This month",):SizedBox.shrink(),



                         ],
                       ),
                     ),
                   );

                 }
                },
              ),
            )


        ]),


      floatingActionButtonLocation:  FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>AddNewTaskPage()));
      },
        backgroundColor: AppColors.primary,
        shape: const CircleBorder(),
        child: const Stack(
          children: [
            Positioned(left: 8,top: 8,
                child: Icon(CupertinoIcons.plus,color: Colors.white,size: 30,)),

            Positioned(right: 7,bottom: 7,
                child: Icon(CupertinoIcons.pen,color: Colors.white,size: 30,))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.menu,size: 30,),
            label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today,size: 30,),
                label: '')
          ],
      onTap: (int index){
          setState(() {
            _currentIndex=index;
          });
      },),
    );
  }


}
