import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/instructor.dart';
import '../domain/instructor_failure.dart';
import '../infrastructure/instructor_repository.dart';

part 'instructor_notifier.freezed.dart';

@freezed
class InstructorState with _$InstructorState {
  const InstructorState._();
  const factory InstructorState.initial(
    Instructor? instructor,
  ) = _Initial;
  const factory InstructorState.loading() = _Loading;
  const factory InstructorState.success(
    Instructor? instructor,
  ) = _Success;
  const factory InstructorState.error(InstructorFailure failure) = _Error;
}

class InstructorNotifier extends StateNotifier<InstructorState> {
  final InstructorRepository _repository;

  InstructorNotifier(this._repository)
      : super(const InstructorState.initial(null));

  Future<void> getInstructorById(String instructorId) async {
    state = const InstructorState.loading();

    final failureOrSuccess =
        await _repository.fetchInstructorById(instructorId);

    state = failureOrSuccess.fold(
      (l) => InstructorState.error(l),
      (r) => InstructorState.success(r),
    );
  }
}
