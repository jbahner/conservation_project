import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'animal_narrative.freezed.dart';
part 'animal_narrative.g.dart';

@freezed
class AnimalNarrative with _$AnimalNarrative {
  const factory AnimalNarrative({
    @JsonKey(name: 'species_id') required int speciesId,
    required String taxonomicnotes,
    required String rationale,
    required String geographicrange,
    required String population,
    required String populationtrend,
    required String habitat,
    required String threats,
    required String conservationmeasures,
    required String usetrade,
  }) = _AnimalNarrative;

  factory AnimalNarrative.fromJson(Map<String, dynamic> json) =>
      _$AnimalNarrativeFromJson(json);
}
