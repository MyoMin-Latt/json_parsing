import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_parsing01/core/shared/providers.dart';
import 'package:json_parsing01/instructor/application/instructors_notifier.dart';
import 'package:json_parsing01/instructor/infrastructure/instructor_remote_service.dart';
import 'package:json_parsing01/instructor/infrastructure/instructor_repository.dart';

final instructorRemoteServiceProvider = Provider(
  (ref) => InstructorRemoteService(
    ref.watch(dioProvider),
  ),
);

final instructorRepositoryProvider = Provider(
  (ref) => InstructorRepository(
    ref.watch(instructorRemoteServiceProvider),
  ),
);

final allInstructorsNotifierProvider =
    StateNotifierProvider<InstructorsNotifier, InstructorsState>(
  (ref) => InstructorsNotifier(
    ref.watch(
      instructorRepositoryProvider,
    ),
  ),
);
