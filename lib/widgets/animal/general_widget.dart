import 'package:conservation_project/model/animal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GeneralAnimalWidget extends ConsumerWidget {
  // const GeneralAnimalWidget({Key? key}) : super(key: key);
  const GeneralAnimalWidget(this.animal);

  final AsyncValue<Animal> animal;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return animal.when(
      data: (animal) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text('population trend: ${animal.populationTrend}'),
            ),
            Expanded(
              child: Text('category: ${animal.category}'),
            ),
          ],
        );
      },
      error: (err, s) => Text(
        err.toString(),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

// Widget? generalWidget(AsyncValue<AnimalInfo> animalInfo, WidgetRef ref) {
//   return animalInfo.when(
//     data: (info) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Expanded(
//             child: Text('population trend: ${info.animal.populationTrend}'),
//           ),
//           Expanded(
//             child: Text('category: ${info.animal.category}'),
//           ),
//           // Expanded(
//           // child: Text('${info.narrative.conservationmeasures}'),
//           // ),
//         ],
//       );
//       // return Center(
//       //   child: Text('population trend: ${narrative.populationtrend}'),
//       // );
//     },
//     error: (err, s) => Text(
//       err.toString(),
//     ),
//     loading: () => const Center(
//       child: CircularProgressIndicator(),
//     ),
//   );
// }
