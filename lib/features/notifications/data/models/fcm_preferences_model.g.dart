// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FcmPreferencesModel _$FcmPreferencesModelFromJson(Map<String, dynamic> json) =>
    _FcmPreferencesModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      pushEnabled: json['pushEnabled'] as bool,
      emailEnabled: json['emailEnabled'] as bool,
      quietHoursEnabled: json['quietHoursEnabled'] as bool,
      quietHoursStart: json['quietHoursStart'] as String?,
      quietHoursEnd: json['quietHoursEnd'] as String?,
      timezone: json['timezone'] as String,
      newMessageEnabled: json['newMessageEnabled'] as bool,
      newOfferEnabled: json['newOfferEnabled'] as bool,
      offerAcceptedEnabled: json['offerAcceptedEnabled'] as bool,
      offerRejectedEnabled: json['offerRejectedEnabled'] as bool,
      itemFavoritedEnabled: json['itemFavoritedEnabled'] as bool,
      newRatingEnabled: json['newRatingEnabled'] as bool,
      badgeEarnedEnabled: json['badgeEarnedEnabled'] as bool,
      challengeEnabled: json['challengeEnabled'] as bool,
      pointsEarnedEnabled: json['pointsEarnedEnabled'] as bool,
      requestFulfilledEnabled: json['requestFulfilledEnabled'] as bool,
      systemEnabled: json['systemEnabled'] as bool,
      marketingEnabled: json['marketingEnabled'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$FcmPreferencesModelToJson(
  _FcmPreferencesModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'pushEnabled': instance.pushEnabled,
  'emailEnabled': instance.emailEnabled,
  'quietHoursEnabled': instance.quietHoursEnabled,
  'quietHoursStart': instance.quietHoursStart,
  'quietHoursEnd': instance.quietHoursEnd,
  'timezone': instance.timezone,
  'newMessageEnabled': instance.newMessageEnabled,
  'newOfferEnabled': instance.newOfferEnabled,
  'offerAcceptedEnabled': instance.offerAcceptedEnabled,
  'offerRejectedEnabled': instance.offerRejectedEnabled,
  'itemFavoritedEnabled': instance.itemFavoritedEnabled,
  'newRatingEnabled': instance.newRatingEnabled,
  'badgeEarnedEnabled': instance.badgeEarnedEnabled,
  'challengeEnabled': instance.challengeEnabled,
  'pointsEarnedEnabled': instance.pointsEarnedEnabled,
  'requestFulfilledEnabled': instance.requestFulfilledEnabled,
  'systemEnabled': instance.systemEnabled,
  'marketingEnabled': instance.marketingEnabled,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

_FcmPreferencesData _$FcmPreferencesDataFromJson(Map<String, dynamic> json) =>
    _FcmPreferencesData(
      preferences: FcmPreferencesModel.fromJson(
        json['preferences'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FcmPreferencesDataToJson(_FcmPreferencesData instance) =>
    <String, dynamic>{'preferences': instance.preferences};

_FcmPreferencesResponse _$FcmPreferencesResponseFromJson(
  Map<String, dynamic> json,
) => _FcmPreferencesResponse(
  success: json['success'] as bool,
  message: json['message'] as String?,
  data: FcmPreferencesData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FcmPreferencesResponseToJson(
  _FcmPreferencesResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_FcmUpdatePreferencesRequest _$FcmUpdatePreferencesRequestFromJson(
  Map<String, dynamic> json,
) => _FcmUpdatePreferencesRequest(
  newMessage: json['newMessage'] as bool?,
  newOffer: json['newOffer'] as bool?,
  offerAccepted: json['offerAccepted'] as bool?,
  offerRejected: json['offerRejected'] as bool?,
  newBadge: json['newBadge'] as bool?,
  challengeCompleted: json['challengeCompleted'] as bool?,
  newRating: json['newRating'] as bool?,
  itemFavorited: json['itemFavorited'] as bool?,
  systemAnnouncement: json['systemAnnouncement'] as bool?,
  marketing: json['marketing'] as bool?,
);

Map<String, dynamic> _$FcmUpdatePreferencesRequestToJson(
  _FcmUpdatePreferencesRequest instance,
) => <String, dynamic>{
  'newMessage': ?instance.newMessage,
  'newOffer': ?instance.newOffer,
  'offerAccepted': ?instance.offerAccepted,
  'offerRejected': ?instance.offerRejected,
  'newBadge': ?instance.newBadge,
  'challengeCompleted': ?instance.challengeCompleted,
  'newRating': ?instance.newRating,
  'itemFavorited': ?instance.itemFavorited,
  'systemAnnouncement': ?instance.systemAnnouncement,
  'marketing': ?instance.marketing,
};
