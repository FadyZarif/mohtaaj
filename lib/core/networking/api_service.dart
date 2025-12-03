import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mohtaaj/features/auth/data/models/refresh_token_request.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/auth/data/models/refresh_token_response.dart';
import '../../features/auth/data/models/register_request.dart';
import '../../features/auth/data/models/register_response.dart';
import '../../features/categories/data/models/categories_response.dart';
import '../../features/chats/data/models/chat_model.dart';
import '../../features/favorites/data/models/add_favorite_response.dart';
import '../../features/favorites/data/models/check_favorite_response.dart';
import '../../features/favorites/data/models/favorite_count_response.dart';
import '../../features/favorites/data/models/favorites_response.dart';
import '../../features/favorites/data/models/remove_favorite_response.dart';
import '../../features/items/data/models/create_item_request.dart';
import '../../features/items/data/models/items_queries.dart';
import '../../features/items/data/models/items_response.dart';
import '../../features/items/data/models/update_item_request.dart';
import '../../features/items/data/models/upload_image_response.dart';
import '../../features/profile/data/models/profile_response.dart';
import '../../features/profile/data/models/rate_user_request.dart';
import '../../features/profile/data/models/rate_user_response.dart';
import '../../features/profile/data/models/update_profile_request.dart';
import '../../features/profile/data/models/user_ratings_response.dart';
import '../../features/profile/data/models/user_response.dart';
import 'api_constants.dart';
import '../../features/auth/data/models/login_request.dart';
import '../../features/auth/data/models/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // ========================== Authentication ==========================

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(@Body() RegisterRequest registerRequest);

  @POST(ApiConstants.refreshToken)
  Future<RefreshTokenResponse> refreshToken(
    @Body() RefreshTokenRequest refreshTokenRequest,
  );

  @POST(ApiConstants.logout)
  Future<void> logout(@Body() Map<String, dynamic> body);

  /// TODO
  @POST(ApiConstants.forgotPassword)
  Future<dynamic> forgotPassword(
    @Body() Map<String, dynamic> forgotPasswordRequest,
  );

  /// TODO
  @POST(ApiConstants.verifyEmail)
  Future<dynamic> verifyEmail(@Body() Map<String, dynamic> verifyEmailRequest);

  // ========================== Users ==========================

  // Get user profile
  @GET(ApiConstants.myProfile)
  Future<ProfileResponse> getMyProfile();

  // Update user profile
  @PATCH(ApiConstants.myProfile)
  Future<ProfileResponse> updateProfile(
    @Body() UpdateProfileRequest updateProfileRequest,
  );

  //Get user by ID
  @GET('${ApiConstants.users}/{userId}')
  Future<UserResponse> getUserById(@Path('userId') String userId);

  // Get user items
  @GET('${ApiConstants.users}/{userId}/items')
  Future<ItemsResponse> getUserItems(
      @Path('userId') String userId,
      @Queries() ItemsQueries? queries,
      );

  // Get user ratings
  @GET('${ApiConstants.users}/{userId}/ratings')
  Future<UserRatingsResponse> getUserRatings(
      @Path('userId') String userId,
      @Query('page') int? page,
      @Query('limit') int? limit,
      );

  // Rate user
  @POST('${ApiConstants.users}/{userId}/rate')
  Future<RateUserResponse> rateUser(
      @Path('userId') String userId,
      @Body() RateUserRequest request,
      );

  // ========================== Items ==========================

  // Get All Items with filters
  @GET(ApiConstants.items)
  Future<ItemsResponse> getItems(@Queries() ItemsQueries queries);

  // Get Single Item
  @GET('${ApiConstants.items}/{itemId}')
  Future<ItemDetailsResponse> getItemById(@Path('itemId') String itemId);

  // Get Featured Items
  @GET(ApiConstants.featuredItems)
  Future<ItemListResponse> getFeaturedItems(@Query('limit') int? limit);

  // Get Items by Category
  @GET('${ApiConstants.itemsByCategory}/{category}')
  Future<ItemsResponse> getItemsByCategory(
    @Path('category') String category,
    @Queries() Map<String, dynamic>? queries,
  );

  // Get Similar Items
  @GET('${ApiConstants.items}/{itemId}/similar')
  Future<ItemListResponse> getSimilarItems(
    @Path('itemId') String itemId,
    @Query('limit') int? limit,
  );

  // Get User Items
  // @GET('${ApiConstants.itemsByUser}/{userId}')
  // Future<ItemsResponse> getItemsByUser(
  //   @Path('userId') String userId,
  //   @Queries() Map<String, dynamic>? queries,
  // );

  // Get My Items
  @GET(ApiConstants.myItems)
  Future<ItemsResponse> getMyItems(
      @Queries() ItemsQueries? queries,
      );

  // Create Item
  @POST(ApiConstants.items)
  Future<ItemDetailsResponse> createItem(
      @Body() CreateItemRequest request,
  );

  // Update Item
  @PATCH('${ApiConstants.items}/{itemId}')
  Future<ItemDetailsResponse> updateItem(
      @Path('itemId') String itemId,
      @Body() UpdateItemRequest request,
  );

  // Delete Item
  @DELETE('${ApiConstants.items}/{itemId}')
  Future<void> deleteItem(
  @Path('itemId') String itemId,
  );

  // Close Item
  @POST('${ApiConstants.items}/{itemId}/close')
  Future<ItemDetailsResponse> closeItem(
  @Path('itemId') String itemId,
  );

  // ========================== Categories ==========================

  @GET(ApiConstants.categories)
  Future<CategoriesResponse> getCategories();

  @GET('${ApiConstants.categories}/{categoryId}')
  Future<CategoryDetailsResponse> getCategoryById(
    @Path('categoryId') String categoryId,
  );

  @GET('${ApiConstants.categoriesSlug}/{slug}')
  Future<CategoryDetailsResponse> getCategoryBySlug(@Path('slug') String slug);

  @GET(ApiConstants.categoriesTree)
  Future<CategoryListResponse> getCategoryTree();

  @GET(ApiConstants.popularCategories)
  Future<CategoryListResponse> getPopularCategories(@Query('limit') int? limit);

  // ========================== Favorites ==========================

  @POST('${ApiConstants.favorites}/{itemId}')
  Future<AddFavoriteResponse> addToFavorites(
      @Path('itemId') String itemId,
      @Body() Map<String, dynamic> body,
      );

  @DELETE('${ApiConstants.favorites}/{itemId}')
  Future<RemoveFavoriteResponse> removeFromFavorites(
    @Path('itemId') String itemId,
  );

  @GET('${ApiConstants.favorites}/{itemId}/check')
  Future<CheckFavoriteResponse> checkIfFavorited(@Path('itemId') String itemId);

  @GET('${ApiConstants.favorites}/{itemId}/count')
  Future<FavoriteCountResponse> getFavoriteCount(@Path('itemId') String itemId);

  @GET(ApiConstants.favorites)
  Future<FavoritesResponse> getMyFavorites(@Queries() ItemsQueries queries);


  // ========================== Chats ==========================

  @POST(ApiConstants.chats)
  Future<ChatResponse> createChat(@Body() CreateChatRequest request);

  @GET(ApiConstants.chats)
  Future<ChatsResponse> getChats({
    @Query('page') int? page,
    @Query('limit') int? limit,
    @Query('search') String? search,
  });

  @GET('${ApiConstants.chats}/{chatId}')
  Future<ChatResponse> getChatById(@Path('chatId') String chatId);

  @POST('${ApiConstants.chats}/messages')
  Future<MessageResponse> sendMessage(@Body() SendMessageRequest request);

  @GET('${ApiConstants.chats}/{chatId}/messages')
  Future<MessagesResponse> getMessages(
      @Path('chatId') String chatId, {
        @Query('page') int? page,
        @Query('limit') int? limit,
        @Query('before') String? before,
      });

  @POST('${ApiConstants.chats}/{chatId}/read')
  Future<CountResponse> markAsRead(@Path('chatId') String chatId);

  @GET(ApiConstants.unreadCount)
  Future<CountResponse> getUnreadCount();

  @PATCH('${ApiConstants.chats}/messages/{messageId}')
  Future<MessageResponse> editMessage(
      @Path('messageId') String messageId,
      @Body() EditMessageRequest request,
      );

  @DELETE('${ApiConstants.chats}/messages/{messageId}')
  Future<void> deleteMessage(@Path('messageId') String messageId);

  // ========================== Offers ==========================

  @POST(ApiConstants.offers)
  Future<dynamic> createOffer(@Body() Map<String, dynamic> createOfferRequest);

  @GET(ApiConstants.receivedOffers)
  Future<dynamic> getReceivedOffers(@Queries() Map<String, dynamic> queries);

  @GET(ApiConstants.sentOffers)
  Future<dynamic> getSentOffers(@Queries() Map<String, dynamic> queries);

  @POST('${ApiConstants.offers}/{offerId}/accept')
  Future<dynamic> acceptOffer(@Path('offerId') String offerId);

  @POST('${ApiConstants.offers}/{offerId}/reject')
  Future<dynamic> rejectOffer(@Path('offerId') String offerId);

  // ========================== Requests ==========================

  @POST(ApiConstants.requests)
  Future<dynamic> createRequest(
    @Body() Map<String, dynamic> createRequestRequest,
  );

  @GET(ApiConstants.requests)
  Future<dynamic> getRequests(@Queries() Map<String, dynamic> queries);

  @GET(ApiConstants.myRequests)
  Future<dynamic> getMyRequests();

  // ========================== Upload ==========================

  // Upload Single Image
  @POST(ApiConstants.uploadImage)
  @MultiPart()
  Future<UploadImageResponse> uploadImage(
  @Part(name: 'image') File image,
  @Part(name: 'folder') String? folder,
  );

// Upload Multiple Images
  @POST(ApiConstants.uploadImages)
  @MultiPart()
  Future<UploadImagesResponse> uploadImages(
  @Part(name: 'images') List<File> images,
  @Part(name: 'folder') String? folder,
  );

  // ========================== Badges ==========================

  @GET(ApiConstants.badges)
  Future<dynamic> getBadges();

  @GET(ApiConstants.myBadges)
  Future<dynamic> getMyBadges();
}
