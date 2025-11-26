
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';
import '../../../items/data/models/item_model.dart';
import '../../../items/data/models/items_queries.dart';
import '../../../items/data/models/items_response.dart';
import '../../data/models/rate_user_request.dart';
import '../../data/models/user_ratings_response.dart';
import 'user_profile_state.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  final ApiService _apiService;
  final String userId;

  UserProfileCubit(this._apiService, this.userId)
      : super(const UserProfileState.initial());

  Future<void> loadUserProfile() async {
    emit(const UserProfileState.loading());

    try {
      final userResponse = await _apiService.getUserById(userId);

      // Get user items
      final itemsFuture = _apiService.getUserItems(
        userId,
        ItemsQueries(
          page: 1,
          limit: 20,
          status: ItemStatus.active,
        ),
      );

      // Get user ratings
      final ratingsFuture = _apiService.getUserRatings(userId, 1, 10);

      final results = await Future.wait([
        itemsFuture,
        ratingsFuture,
      ]);

      final ItemsResponse itemsResponse = results[0] as ItemsResponse;
      final UserRatingsResponse ratingsResponse = results[1] as UserRatingsResponse;

      emit(UserProfileState.success(
        user: userResponse.data,
        items: itemsResponse.data.items,
        itemsPage: 1,
        hasMoreItems: 1 < itemsResponse.data.meta.totalPages,
        ratings: ratingsResponse.data.ratings,
        ratingsPage: 1,
        hasMoreRatings: 1 < ratingsResponse.data.meta.totalPages,
      ));
    } catch (error,s) {
      print(error);
      print(s);
      final errorMessage = ApiErrorHandler.handle(error).message;
      emit(UserProfileState.error(errorMessage));
    }
  }

  Future<void> loadMoreItems() async {
    state.maybeWhen(
      success: (user, items, ratings, itemsPage, hasMoreItems, isLoadingItems, ratingsPage, hasMoreRatings, isLoadingRatings) async {
        if (!hasMoreItems || isLoadingItems) return;

        emit(UserProfileState.success(
          user: user,
          items: items,
          ratings: ratings,
          itemsPage: itemsPage,
          hasMoreItems: hasMoreItems,
          isLoadingItems: true,
          ratingsPage: ratingsPage,
          hasMoreRatings: hasMoreRatings,
          isLoadingRatings: isLoadingRatings,
        ));

        try {
          final response = await _apiService.getUserItems(
            userId,
            ItemsQueries(
              page: itemsPage + 1,
              limit: 20,
              status: ItemStatus.active,
            ),
          );

          final newItems = response.data.items;
          final hasMore = (itemsPage + 1) < response.data.meta.totalPages;

          emit(UserProfileState.success(
            user: user,
            items: [...items, ...newItems],
            ratings: ratings,
            itemsPage: itemsPage + 1,
            hasMoreItems: hasMore,
            isLoadingItems: false,
            ratingsPage: ratingsPage,
            hasMoreRatings: hasMoreRatings,
            isLoadingRatings: isLoadingRatings,
          ));
        } catch (error) {
          emit(UserProfileState.success(
            user: user,
            items: items,
            ratings: ratings,
            itemsPage: itemsPage,
            hasMoreItems: hasMoreItems,
            isLoadingItems: false,
            ratingsPage: ratingsPage,
            hasMoreRatings: hasMoreRatings,
            isLoadingRatings: isLoadingRatings,
          ));
        }
      },
      orElse: () {},
    );
  }

  Future<void> rateUser(int rating, String? comment, String itemId) async {
    try {
      await _apiService.rateUser(
        userId,
        RateUserRequest(
          rating: rating,
          comment: comment,
          itemId: itemId,
        ),
      );

      // Reload profile to get updated ratings
      await loadUserProfile();
    } catch (error) {
      final errorMessage = ApiErrorHandler.handle(error).message;
      // Handle error - show snackbar or dialog
    }
  }

  Future<void> refresh() async {
    await loadUserProfile();
  }
}