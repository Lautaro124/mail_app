import 'package:bloc/bloc.dart';
import 'package:firebase_pictures_saved/modules/user/models/user.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitial()) {
    on<UserLoginWithGoogle>((event, emit) => emit(UserSetState(event.user)));
  }
}
