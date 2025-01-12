import 'package:flutter/material.dart';
import 'package:todo/common/widgets/buttons/basic_app_button.dart';
import 'package:todo/presentation/auth/widgets/sign_up/already_account.dart';
import 'package:todo/presentation/auth/widgets/sign_up/email_sign_up.dart';
import 'package:todo/presentation/auth/widgets/sign_up/intro_sign_up.dart';
import 'package:todo/presentation/auth/widgets/sign_up/other_sign_up.dart';
import 'package:todo/presentation/auth/widgets/sign_up/password_sign_up.dart';


class SignUpPage extends StatelessWidget {
 SignUpPage({super.key});
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
     body:  Padding(
       padding: const EdgeInsets.only(left: 40,right: 40,bottom: 10),
       child: Center(
         child: Form(
           key: _formKey,
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
              const Spacer(),
               const IntroSignUp(),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   EmailSignUpWidget(controller: emailController,),
                   PasswordSignUpWidget(controller: passwordController,)],
               ),
               const SizedBox(height: 20,),
               BasicAppButton(title: "Sign up", onPress: (){
                 if(_formKey.currentState!.validate()){

                 }
               }),
               const SizedBox(height: 30,),
               const Text("or sign up with",style: TextStyle(fontSize: 18,color: Colors.grey),),
               const SizedBox(height: 10,),
               const OtherSignUp(),
              const Spacer(),
               const AlreadyAccount()
             ],
           ),
         ),
       ),
     ),
    );
  }
}
