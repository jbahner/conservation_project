// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_narrative.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimalNarrative _$$_AnimalNarrativeFromJson(Map<String, dynamic> json) =>
    _$_AnimalNarrative(
      speciesId: json['species_id'] as int,
      taxonomicnotes: json['taxonomicnotes'] as String,
      rationale: json['rationale'] as String,
      geographicrange: json['geographicrange'] as String,
      population: json['population'] as String,
      populationtrend: json['populationtrend'] as String,
      habitat: json['habitat'] as String,
      threats: json['threats'] as String,
      conservationmeasures: json['conservationmeasures'] as String,
      usetrade: json['usetrade'] as String,
    );

Map<String, dynamic> _$$_AnimalNarrativeToJson(_$_AnimalNarrative instance) =>
    <String, dynamic>{
      'species_id': instance.speciesId,
      'taxonomicnotes': instance.taxonomicnotes,
      'rationale': instance.rationale,
      'geographicrange': instance.geographicrange,
      'population': instance.population,
      'populationtrend': instance.populationtrend,
      'habitat': instance.habitat,
      'threats': instance.threats,
      'conservationmeasures': instance.conservationmeasures,
      'usetrade': instance.usetrade,
    };
