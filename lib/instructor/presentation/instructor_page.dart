import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_parsing01/instructor/shared/providers.dart';

import '../application/instructors_notifier.dart';

class InstructorPage extends ConsumerStatefulWidget {
  const InstructorPage({Key? key}) : super(key: key);

  @override
  _InstructorPageState createState() => _InstructorPageState();
}

class _InstructorPageState extends ConsumerState<InstructorPage> {
  @override
  void initState() {
    _loadData();
    super.initState();
  }

  Future<void> _loadData() async {
    Future.microtask(() =>
        ref.read(allInstructorsNotifierProvider.notifier).getAllInstructors());
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<InstructorsState>(
      allInstructorsNotifierProvider,
      (previous, state) {
        state.map(
          initial: (_) {},
          loading: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Loading...'),
              ),
            );
          },
          success: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Success'),
              ),
            );
          },
          error: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Error...'),
              ),
            );
          },
        );
      },
    );

    final state = ref.watch(allInstructorsNotifierProvider);

    return Scaffold(
      appBar: AppBar(),
      body: state.map(
        initial: (_) => Container(),
        loading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        success: (_) => RefreshIndicator(
          onRefresh: _loadData,
          child: ListView.builder(
            itemCount: _.instructors.length,
            itemBuilder: (context, index) {
              final instructor = _.instructors[index];
              return Text(instructor.instructorName);
            },
          ),
        ),
        error: (_) => Container(
          child: Text('${_.failure.errorCode}'),
        ),
      ),
    );
  }
}
