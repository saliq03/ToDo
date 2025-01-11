import 'package:flutter/material.dart';

import '../../../core/configs/assets/app_images.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             height: 120,width: 120,
             decoration:BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage(AppImages.logo))
             ),
           ),
           SizedBox(height: 20),
           Text("Let's get started!",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
         ],
       ),
     ),
    );
  }
}
