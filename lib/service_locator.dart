
import 'package:get_it/get_it.dart';

import 'business/repository/auth/auth.dart';

import 'business/usecase/auth/signin_with_email_password.dart';
import 'business/usecase/auth/signup_with_email_password.dart';
import 'data/repository/auth/auth.dart';
import 'data/sources/auth/auth_firebase_service.dart';

final sL=GetIt.instance;

Future<void> initializeDependencies()async{

  sL.registerSingleton<AuthFirebaseService>(
      AuthFirebaseServiceImpl());

  sL.registerSingleton<AuthRepository>(
      AuthRepositoryImpl());

  sL.registerSingleton<SignupWithEmailPasswordUseCase>(
      SignupWithEmailPasswordUseCase());

  sL.registerSingleton<SigninWithEmailPasswordUseCase>(
      SigninWithEmailPasswordUseCase());


}