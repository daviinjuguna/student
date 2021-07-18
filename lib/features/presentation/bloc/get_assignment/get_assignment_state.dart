part of 'get_assignment_bloc.dart';

@freezed
class GetAssignmentState with _$GetAssignmentState {
  const factory GetAssignmentState.initial() = _Initial;
  const factory GetAssignmentState.loading() = _Load;
  const factory GetAssignmentState.updating() = _Updating;

  const factory GetAssignmentState.success(
      {required KtList<Assignment> assignment}) = _Success;
  const factory GetAssignmentState.error({required String message}) = _Message;
}
