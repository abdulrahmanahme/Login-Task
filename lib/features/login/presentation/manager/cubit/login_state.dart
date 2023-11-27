part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}
final class LoadingState extends LoginState {}
final class SuccessState extends LoginState {}
final class ErrorState extends LoginState {

}


