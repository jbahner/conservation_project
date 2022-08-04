import 'package:conservation_project/model/animal.dart';
import 'package:conservation_project/model/animal_narrative.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal_info.freezed.dart';

@freezed
class AnimalInfo with _$AnimalInfo {
  const factory AnimalInfo({
    required Animal animal,
    required AnimalNarrative narrative,
  }) = _AnimalInfo;
}
