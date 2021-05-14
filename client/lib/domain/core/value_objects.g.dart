// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailAddress _$_$_EmailAddressFromJson(Map<String, dynamic> json) {
  return _$_EmailAddress(
    const EitherValueFailureOrStringConverter()
        .fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_EmailAddressToJson(_$_EmailAddress instance) =>
    <String, dynamic>{
      'value':
          const EitherValueFailureOrStringConverter().toJson(instance.value),
    };
