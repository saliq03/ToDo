import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/presentation/add_new_task/pages/add_new_task.dart';

import '../../../core/configs/colors/app_colors.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 List<Widget> body=[Text("0"),Text('1')];

 int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[_currentIndex]),
      
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
