import 'dart:convert';

import 'package:conservation_project/model/animal.dart';
import 'package:conservation_project/model/animal_info.dart';
import 'package:conservation_project/model/animal_narrative.dart';
import 'package:conservation_project/widgets/animal/narrative_widget.dart';
import 'package:conservation_project/widgets/animal/general_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class AnimalScreen extends ConsumerWidget {
  static const String _name = "Cricetus cricetus";

  static final narrativeProvider = FutureProvider<AnimalNarrative>((ref) async {
    return await http
        .get(Uri.parse(
            '${env['BASE_URL']}/species/narrative/$_name?token=${env['API_TOKEN']}'))
        .then((value) => jsonDecode(value.body))
        .then((value) => AnimalNarrative.fromJson(value['result'][0]));
  });

  static final animalProvider = FutureProvider<Animal>((ref) async {
    return await http
        .get(Uri.parse(
            '${env['BASE_URL']}/species/$_name?token=${env['API_TOKEN']}'))
        .then((value) => jsonDecode(value.body))
        .then((value) => Animal.fromJson(value['result'][0]));
  });

  static final animalInfoProvider = FutureProvider<AnimalInfo>((ref) async {
    final narrative = ref.watch(narrativeProvider.future);
    final animal = ref.watch(animalProvider.future);
    return AnimalInfo(animal: await animal, narrative: await narrative);
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animal = ref.watch(animalProvider);
    // final animalInfo = ref.watch(animalInfoProvider);
    final narrative = ref.watch(narrativeProvider);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: animal.when(
            data: (animal) => Text('${animal.mainCommonName}'),
            error: (err, s) => Text(err.toString()),
            loading: () => const Text(''),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.person_pin_outlined),
              child: Text('General'),
            ),
            Tab(
              icon: Icon(Icons.assignment),
              child: Text('Details'),
            )
          ]),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(children: [
          GeneralAnimalWidget(animal),
          NarrativeAnimalWidget(narrative),
        ]),
      ),
    );
  }
}
