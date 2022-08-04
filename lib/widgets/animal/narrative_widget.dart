import 'package:conservation_project/model/animal_narrative.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NarrativeAnimalWidget extends ConsumerWidget {
  const NarrativeAnimalWidget(this.narrative);

  final AsyncValue<AnimalNarrative> narrative;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return narrative.when(
      data: (data) => Container(),
      error: (error, s) => Text(error.toString()),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
