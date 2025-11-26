// features/user_profile/logic/user_profile_cubit/user_profile_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/user_response.dart';
import '../../data/models/user_ratings_response.dart';
import '../../../items/data/models/item_model.dart';

part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loading() = _Loading;
  const factory UserProfileState.success({
    required UserData user,
    required List<ItemModel> items,
    required List<UserRating> ratings,
    @Default(1) int itemsPage,
    @Default(false) bool hasMoreItems,
    @Default(false) bool isLoadingItems,
    @Default(1) int ratingsPage,
    @Default(false) bool hasMoreRatings,
    @Default(false) bool isLoadingRatings,
  }) = _Success;
  const factory UserProfileState.error(String message) = _Error;
}