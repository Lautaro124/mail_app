part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class UserLoginWithGoogle extends UserEvent {
  final User user;

  UserLoginWithGoogle(this.user);
}
