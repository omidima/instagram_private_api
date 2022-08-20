// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insta_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstaDevice _$InstaDeviceFromJson(Map<String, dynamic> json) => InstaDevice(
      deviceString: json['deviceString'] as String?,
      build: json['build'] as String?,
      uuid: json['uuid'] as String?,
      phoneId: json['phoneId'] as String?,
      adid: json['adid'] as String?,
      deviceId: json['deviceId'] as String?,
    );

Map<String, dynamic> _$InstaDeviceToJson(InstaDevice instance) =>
    <String, dynamic>{
      'deviceString': instance.deviceString,
      'build': instance.build,
      'uuid': instance.uuid,
      'phoneId': instance.phoneId,
      'adid': instance.adid,
      'deviceId': instance.deviceId,
    };
