import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'animal.freezed.dart';
part 'animal.g.dart';

@freezed
class Animal with _$Animal {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Animal({
    required int taxonid,
    String? scientificName,
    String? kingdom,
    String? phylum,
    @JsonKey(name: 'class') String? animalClass,
    String? order,
    String? family,
    String? genus,
    String? mainCommonName,
    String? authority,
    int? publishedYear,
    String? assessmentDate,
    String? category,
    String? criteria,
    String? populationTrend,
    bool? marineSystem,
    bool? freshwaterSystem,
    bool? terrestrialSystem,
    String? assessor,
    String? reviewer,
    String? aooKm2,
    String? eooKm2,
    int? elevationUpper,
    int? elevationLower,
    String? depthUpper,
    String? depthLower,
    String? errataFlag,
    String? errataReason,
    String? amendedFlag,
    String? amendedReason,
  }) = _Animal;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}
