class FcmPreferencesModel {
  final bool pushNotifications;
  final bool emailNotifications;
  final bool quietHoursEnabled;
  final String? quietHoursStart;
  final String? quietHoursEnd;
  final bool newMessage;
  final bool itemFavorited;
  final bool badgeEarned;
  final bool newOffer;
  final bool offerAccepted;
  final bool offerRejected;
  final bool newRating;
  final bool challengeCompleted;
  final bool pointsEarned;
  final bool requestFulfilled;
  final bool systemNotifications;
  final bool marketingNotifications;

  FcmPreferencesModel({
    required this.pushNotifications,
    required this.emailNotifications,
    required this.quietHoursEnabled,
    this.quietHoursStart,
    this.quietHoursEnd,
    required this.newMessage,
    required this.itemFavorited,
    required this.badgeEarned,
    required this.newOffer,
    required this.offerAccepted,
    required this.offerRejected,
    required this.newRating,
    required this.challengeCompleted,
    required this.pointsEarned,
    required this.requestFulfilled,
    required this.systemNotifications,
    required this.marketingNotifications,
  });

  factory FcmPreferencesModel.fromJson(Map<String, dynamic> json) {
    return FcmPreferencesModel(
      pushNotifications: json['pushNotifications'] as bool? ?? true,
      emailNotifications: json['emailNotifications'] as bool? ?? true,
      quietHoursEnabled: json['quietHoursEnabled'] as bool? ?? false,
      quietHoursStart: json['quietHoursStart'] as String?,
      quietHoursEnd: json['quietHoursEnd'] as String?,
      newMessage: json['newMessage'] as bool? ?? true,
      itemFavorited: json['itemFavorited'] as bool? ?? true,
      badgeEarned: json['badgeEarned'] as bool? ?? true,
      newOffer: json['newOffer'] as bool? ?? true,
      offerAccepted: json['offerAccepted'] as bool? ?? true,
      offerRejected: json['offerRejected'] as bool? ?? true,
      newRating: json['newRating'] as bool? ?? true,
      challengeCompleted: json['challengeCompleted'] as bool? ?? true,
      pointsEarned: json['pointsEarned'] as bool? ?? true,
      requestFulfilled: json['requestFulfilled'] as bool? ?? true,
      systemNotifications: json['systemNotifications'] as bool? ?? true,
      marketingNotifications: json['marketingNotifications'] as bool? ?? false,
    );
  }

  FcmPreferencesModel copyWith({
    bool? pushNotifications,
    bool? emailNotifications,
    bool? quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    bool? newMessage,
    bool? itemFavorited,
    bool? badgeEarned,
    bool? newOffer,
    bool? offerAccepted,
    bool? offerRejected,
    bool? newRating,
    bool? challengeCompleted,
    bool? pointsEarned,
    bool? requestFulfilled,
    bool? systemNotifications,
    bool? marketingNotifications,
  }) {
    return FcmPreferencesModel(
      pushNotifications: pushNotifications ?? this.pushNotifications,
      emailNotifications: emailNotifications ?? this.emailNotifications,
      quietHoursEnabled: quietHoursEnabled ?? this.quietHoursEnabled,
      quietHoursStart: quietHoursStart ?? this.quietHoursStart,
      quietHoursEnd: quietHoursEnd ?? this.quietHoursEnd,
      newMessage: newMessage ?? this.newMessage,
      itemFavorited: itemFavorited ?? this.itemFavorited,
      badgeEarned: badgeEarned ?? this.badgeEarned,
      newOffer: newOffer ?? this.newOffer,
      offerAccepted: offerAccepted ?? this.offerAccepted,
      offerRejected: offerRejected ?? this.offerRejected,
      newRating: newRating ?? this.newRating,
      challengeCompleted: challengeCompleted ?? this.challengeCompleted,
      pointsEarned: pointsEarned ?? this.pointsEarned,
      requestFulfilled: requestFulfilled ?? this.requestFulfilled,
      systemNotifications: systemNotifications ?? this.systemNotifications,
      marketingNotifications:
          marketingNotifications ?? this.marketingNotifications,
    );
  }
}

class FcmPreferencesResponse {
  final bool success;
  final FcmPreferencesModel preferences;

  FcmPreferencesResponse({required this.success, required this.preferences});

  factory FcmPreferencesResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    return FcmPreferencesResponse(
      success: json['success'] as bool,
      preferences: FcmPreferencesModel.fromJson(
        data['preferences'] as Map<String, dynamic>,
      ),
    );
  }
}

class FcmUpdatePreferencesRequest {
  final bool? pushNotifications;
  final bool? emailNotifications;
  final bool? quietHoursEnabled;
  final String? quietHoursStart;
  final String? quietHoursEnd;
  final bool? newMessage;
  final bool? itemFavorited;
  final bool? badgeEarned;
  final bool? newOffer;
  final bool? offerAccepted;
  final bool? offerRejected;
  final bool? newRating;
  final bool? challengeCompleted;
  final bool? pointsEarned;
  final bool? requestFulfilled;
  final bool? systemNotifications;
  final bool? marketingNotifications;

  FcmUpdatePreferencesRequest({
    this.pushNotifications,
    this.emailNotifications,
    this.quietHoursEnabled,
    this.quietHoursStart,
    this.quietHoursEnd,
    this.newMessage,
    this.itemFavorited,
    this.badgeEarned,
    this.newOffer,
    this.offerAccepted,
    this.offerRejected,
    this.newRating,
    this.challengeCompleted,
    this.pointsEarned,
    this.requestFulfilled,
    this.systemNotifications,
    this.marketingNotifications,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (pushNotifications != null) map['pushNotifications'] = pushNotifications;
    if (emailNotifications != null) {
      map['emailNotifications'] = emailNotifications;
    }
    if (quietHoursEnabled != null) map['quietHoursEnabled'] = quietHoursEnabled;
    if (quietHoursStart != null) map['quietHoursStart'] = quietHoursStart;
    if (quietHoursEnd != null) map['quietHoursEnd'] = quietHoursEnd;
    if (newMessage != null) map['newMessage'] = newMessage;
    if (itemFavorited != null) map['itemFavorited'] = itemFavorited;
    if (badgeEarned != null) map['badgeEarned'] = badgeEarned;
    if (newOffer != null) map['newOffer'] = newOffer;
    if (offerAccepted != null) map['offerAccepted'] = offerAccepted;
    if (offerRejected != null) map['offerRejected'] = offerRejected;
    if (newRating != null) map['newRating'] = newRating;
    if (challengeCompleted != null) {
      map['challengeCompleted'] = challengeCompleted;
    }
    if (pointsEarned != null) map['pointsEarned'] = pointsEarned;
    if (requestFulfilled != null) map['requestFulfilled'] = requestFulfilled;
    if (systemNotifications != null) {
      map['systemNotifications'] = systemNotifications;
    }
    if (marketingNotifications != null) {
      map['marketingNotifications'] = marketingNotifications;
    }
    return map;
  }
}
