import 'package:flutter/material.dart';

import 'package:todo/presentation/auth/widgets/sign_in/dont_have_account.dart';
import 'package:todo/presentation/auth/widgets/sign_in/email_sign_in.dart';
import 'package:todo/presentation/auth/widgets/sign_in/intro_sign_in.dart';
import 'package:todo/presentation/auth/widgets/sign_in/other_sign_in.dart';
import 'package:todo/presentation/auth/widgets/sign_in/password_sign_in.dart';

import '../../../common/widgets/buttons/basic_app_button.dart';


class SignInPage extends StatelessWidget {
   SignInPage({super.key});
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
               const IntroSignIn(),

                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   EmailSignIn(controller: emailController,),
                   PasswordSignIn(controller: passwordController)
                ]),
                const SizedBox(height: 20,),
                BasicAppButton(title: "Log in", onPress: (){
                  if(_formKey.currentState!.validate()){

                  }
                }),
                const SizedBox(height: 30,),
                const Text("or log in with",style: TextStyle(fontSize: 18,color: Colors.grey),),
                const SizedBox(height: 10,),
                const OtherSignIn(),
                const Spacer(),
                const DontHaveAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
