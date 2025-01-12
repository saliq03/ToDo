import 'package:flutter/material.dart';

import '../../pages/sign_up.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?",style: TextStyle(fontSize: 18,color: Colors.grey)),
        TextButton(onPressed: (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (_)=> SignUpPage()));
        }, child: const Text("Get started",style: TextStyle(fontSize: 18),))
      ],);
  }
}
