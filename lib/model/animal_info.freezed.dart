// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'animal_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimalInfo {
  Animal get animal => throw _privateConstructorUsedError;
  AnimalNarrative get narrative => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimalInfoCopyWith<AnimalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalInfoCopyWith<$Res> {
  factory $AnimalInfoCopyWith(
          AnimalInfo value, $Res Function(AnimalInfo) then) =
      _$AnimalInfoCopyWithImpl<$Res>;
  $Res call({Animal animal, AnimalNarrative narrative});

  $AnimalCopyWith<$Res> get animal;
  $AnimalNarrativeCopyWith<$Res> get narrative;
}

/// @nodoc
class _$AnimalInfoCopyWithImpl<$Res> implements $AnimalInfoCopyWith<$Res> {
  _$AnimalInfoCopyWithImpl(this._value, this._then);

  final AnimalInfo _value;
  // ignore: unused_field
  final $Res Function(AnimalInfo) _then;

  @override
  $Res call({
    Object? animal = freezed,
    Object? narrative = freezed,
  }) {
    return _then(_value.copyWith(
      animal: animal == freezed
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as Animal,
      narrative: narrative == freezed
          ? _value.narrative
          : narrative // ignore: cast_nullable_to_non_nullable
              as AnimalNarrative,
    ));
  }

  @override
  $AnimalCopyWith<$Res> get animal {
    return $AnimalCopyWith<$Res>(_value.animal, (value) {
      return _then(_value.copyWith(animal: value));
    });
  }

  @override
  $AnimalNarrativeCopyWith<$Res> get narrative {
    return $AnimalNarrativeCopyWith<$Res>(_value.narrative, (value) {
      return _then(_value.copyWith(narrative: value));
    });
  }
}

/// @nodoc
abstract class _$$_AnimalInfoCopyWith<$Res>
    implements $AnimalInfoCopyWith<$Res> {
  factory _$$_AnimalInfoCopyWith(
          _$_AnimalInfo value, $Res Function(_$_AnimalInfo) then) =
      __$$_AnimalInfoCopyWithImpl<$Res>;
  @override
  $Res call({Animal animal, AnimalNarrative narrative});

  @override
  $AnimalCopyWith<$Res> get animal;
  @override
  $AnimalNarrativeCopyWith<$Res> get narrative;
}

/// @nodoc
class __$$_AnimalInfoCopyWithImpl<$Res> extends _$AnimalInfoCopyWithImpl<$Res>
    implements _$$_AnimalInfoCopyWith<$Res> {
  __$$_AnimalInfoCopyWithImpl(
      _$_AnimalInfo _value, $Res Function(_$_AnimalInfo) _then)
      : super(_value, (v) => _then(v as _$_AnimalInfo));

  @override
  _$_AnimalInfo get _value => super._value as _$_AnimalInfo;

  @override
  $Res call({
    Object? animal = freezed,
    Object? narrative = freezed,
  }) {
    return _then(_$_AnimalInfo(
      animal: animal == freezed
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as Animal,
      narrative: narrative == freezed
          ? _value.narrative
          : narrative // ignore: cast_nullable_to_non_nullable
              as AnimalNarrative,
    ));
  }
}

/// @nodoc

class _$_AnimalInfo implements _AnimalInfo {
  const _$_AnimalInfo({required this.animal, required this.narrative});

  @override
  final Animal animal;
  @override
  final AnimalNarrative narrative;

  @override
  String toString() {
    return 'AnimalInfo(animal: $animal, narrative: $narrative)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimalInfo &&
            const DeepCollectionEquality().equals(other.animal, animal) &&
            const DeepCollectionEquality().equals(other.narrative, narrative));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(animal),
      const DeepCollectionEquality().hash(narrative));

  @JsonKey(ignore: true)
  @override
  _$$_AnimalInfoCopyWith<_$_AnimalInfo> get copyWith =>
      __$$_AnimalInfoCopyWithImpl<_$_AnimalInfo>(this, _$identity);
}

abstract class _AnimalInfo implements AnimalInfo {
  const factory _AnimalInfo(
      {required final Animal animal,
      required final AnimalNarrative narrative}) = _$_AnimalInfo;

  @override
  Animal get animal;
  @override
  AnimalNarrative get narrative;
  @override
  @JsonKey(ignore: true)
  _$$_AnimalInfoCopyWith<_$_AnimalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
