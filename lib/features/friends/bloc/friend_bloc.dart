import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'friend_event.dart';
part 'friend_state.dart';

class FriendBloc extends Bloc<FriendEvent, FriendState> {
  FriendBloc() : super(FriendInitial()) {
    on<FriendEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
