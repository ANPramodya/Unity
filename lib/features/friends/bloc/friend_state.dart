part of 'friend_bloc.dart';

sealed class FriendState extends Equatable {
  const FriendState();
  
  @override
  List<Object> get props => [];
}

final class FriendInitial extends FriendState {}
