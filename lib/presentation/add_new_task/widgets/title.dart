import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(" Title",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        const SizedBox(height: 5,),
        TextFormField(
          // controller: controller,
            validator: (value){
              if(value!.isEmpty){
                return 'Enter Title';
              }
              return null;
            }
        ),
      ],
    );
  }
}
