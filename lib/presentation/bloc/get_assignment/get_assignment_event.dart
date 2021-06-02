part of 'get_assignment_bloc.dart';

@freezed
class GetAssignmentEvent with _$GetAssignmentEvent {
  const factory GetAssignmentEvent.started({required int id}) = _Started;
}
