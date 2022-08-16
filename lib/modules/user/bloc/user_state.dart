part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final User? user;

  const UserState({this.user});
}

class UserInitial extends UserState {
  const UserInitial();
}

class UserSetState extends UserState {
  final User newUser;

  const UserSetState(this.newUser) : super(user: newUser);
}
