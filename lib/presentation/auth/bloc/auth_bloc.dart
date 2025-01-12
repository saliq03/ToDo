
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo/business/usecase/auth/signin_with_email_password.dart';

import 'package:todo/core/configs/constants/status.dart';

import '../../../../business/usecase/auth/signup_with_email_password.dart';
import '../../../../service_locator.dart';
import '../../../data/models/user_request.dart';


part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(): super(const AuthState()){
   on<SignUpWithEmailAndPassword>(_signUpWithEmailPassword);
   on<SignInWithEmailAndPassword>(_signInWithEmailPassword);
  }

  void _signUpWithEmailPassword(SignUpWithEmailAndPassword event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: Status.loading));
    var result= await sL<SignupWithEmailPasswordUseCase>().call(
        params: UserRequest(
            email: event.email,
            password:event.password));
    result.fold(
            (l){
         emit(state.copyWith(status: Status.error,message: l));
        },
            (r){
          emit(state.copyWith(status: Status.sucess));
        }
    );
  }

  void _signInWithEmailPassword(SignInWithEmailAndPassword event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: Status.loading));
    var result= await sL<SigninWithEmailPasswordUseCase>().call(
        params: UserRequest(
            email: event.email,
            password:event.password));


    result.fold(
            (l){
          emit(state.copyWith(status: Status.error,message: l));
        },
            (r){
          emit(state.copyWith(status: Status.sucess));
        }
    );
  }
}
