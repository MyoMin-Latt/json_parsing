import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/instructor.dart';
import '../domain/instructor_failure.dart';
import '../infrastructure/instructor_repository.dart';

part 'instructors_notifier.freezed.dart';

@freezed
class InstructorsState with _$InstructorsState {
  const InstructorsState._();
  const factory InstructorsState.initial(
    List<Instructor> instructors,
  ) = _Initial;
  const factory InstructorsState.loading() = _Loading;
  const factory InstructorsState.success(
    List<Instructor> instructors,
  ) = _Success;
  const factory InstructorsState.error(InstructorFailure failure) = _Error;
}

class InstructorsNotifier extends StateNotifier<InstructorsState> {
  final InstructorRepository _repository;

  InstructorsNotifier(this._repository)
      : super(const InstructorsState.initial([]));

  Future<void> getAllInstructors() async {
    state = const InstructorsState.loading();

    final failureOrSuccess = await _repository.fetchAllInstructors();

    state = failureOrSuccess.fold(
      (l) => InstructorsState.error(l),
      (r) => InstructorsState.success(r),
    );
  }
}
