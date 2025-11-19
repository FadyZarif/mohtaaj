import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mohtaaj/features/auth/data/models/refresh_token_request.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/auth/data/models/refresh_token_response.dart';
import '../../features/auth/data/models/register_request.dart';
import '../../features/auth/data/models/register_response.dart';
import '../../features/categories/data/models/categories_response.dart';
import '../../features/profile/data/models/profile_response.dart';
import '../../features/profile/data/models/update_profile_request.dart';
import 'api_constants.dart';
import '../../features/auth/data/models/login_request.dart';
import '../../features/auth/data/models/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // ========================== Authentication ==========================
  
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequest loginRequest,
  );

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequest registerRequest,
  );

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
  Future<dynamic> verifyEmail(
    @Body() Map<String, dynamic> verifyEmailRequest,
  );

  // ========================== Users ==========================

  // Get user profile
  @GET(ApiConstants.myProfile)
  Future<ProfileResponse> getMyProfile();

  // Update user profile
  @PATCH(ApiConstants.myProfile)
  Future<ProfileResponse> updateProfile(
    @Body() UpdateProfileRequest updateProfileRequest,
  );

  ///TODO
  @GET('${ApiConstants.getUserById}/{userId}')
  Future<dynamic> getUserById(
    @Path('userId') String userId,
  );

  // ========================== Items ==========================
  
  @GET(ApiConstants.items)
  Future<dynamic> getItems(
    @Queries() Map<String, dynamic> queries,
  );

  @GET('${ApiConstants.items}/{itemId}')
  Future<dynamic> getItemById(
    @Path('itemId') String itemId,
  );

  @POST(ApiConstants.items)
  Future<dynamic> createItem(
    @Body() Map<String, dynamic> createItemRequest,
  );

  @PUT('${ApiConstants.items}/{itemId}')
  Future<dynamic> updateItem(
    @Path('itemId') String itemId,
    @Body() Map<String, dynamic> updateItemRequest,
  );

  @DELETE('${ApiConstants.items}/{itemId}')
  Future<dynamic> deleteItem(
    @Path('itemId') String itemId,
  );

  @GET(ApiConstants.searchItems)
  Future<dynamic> searchItems(
    @Queries() Map<String, dynamic> queries,
  );

  @GET(ApiConstants.myItems)
  Future<dynamic> getMyItems();

  @GET(ApiConstants.nearbyItems)
  Future<dynamic> getNearbyItems(
    @Queries() Map<String, dynamic> queries,
  );

  // ========================== Categories ==========================

  @GET(ApiConstants.categories)
  Future<CategoriesResponse> getCategories();

  @GET('${ApiConstants.categories}/{categoryId}')
  Future<CategoryDetailsResponse> getCategoryById(
      @Path('categoryId') String categoryId,
      );

  @GET('${ApiConstants.categoriesSlug}/{slug}')
  Future<CategoryDetailsResponse> getCategoryBySlug(
      @Path('slug') String slug,
      );

  @GET(ApiConstants.categoriesTree)
  Future<CategoryListResponse> getCategoryTree();

  @GET(ApiConstants.popularCategories)
  Future<CategoryListResponse> getPopularCategories(
      @Query('limit') int? limit,
      );

  // ========================== Favorites ==========================
  
  @POST('${ApiConstants.favorites}/{itemId}')
  Future<dynamic> addToFavorites(
    @Path('itemId') String itemId,
  );

  @DELETE('${ApiConstants.favorites}/{itemId}')
  Future<dynamic> removeFromFavorites(
    @Path('itemId') String itemId,
  );

  @GET(ApiConstants.myFavorites)
  Future<dynamic> getMyFavorites(
    @Queries() Map<String, dynamic> queries,
  );

  // ========================== Offers ==========================
  
  @POST(ApiConstants.offers)
  Future<dynamic> createOffer(
    @Body() Map<String, dynamic> createOfferRequest,
  );

  @GET(ApiConstants.receivedOffers)
  Future<dynamic> getReceivedOffers(
    @Queries() Map<String, dynamic> queries,
  );

  @GET(ApiConstants.sentOffers)
  Future<dynamic> getSentOffers(
    @Queries() Map<String, dynamic> queries,
  );

  @POST('${ApiConstants.offers}/{offerId}/accept')
  Future<dynamic> acceptOffer(
    @Path('offerId') String offerId,
  );

  @POST('${ApiConstants.offers}/{offerId}/reject')
  Future<dynamic> rejectOffer(
    @Path('offerId') String offerId,
  );

  // ========================== Requests ==========================
  
  @POST(ApiConstants.requests)
  Future<dynamic> createRequest(
    @Body() Map<String, dynamic> createRequestRequest,
  );

  @GET(ApiConstants.requests)
  Future<dynamic> getRequests(
    @Queries() Map<String, dynamic> queries,
  );

  @GET(ApiConstants.myRequests)
  Future<dynamic> getMyRequests();

  // ========================== Upload ==========================
  
  @POST(ApiConstants.uploadSingle)
  @MultiPart()
  Future<dynamic> uploadSingleImage(
    @Part(name: 'image') File image,
  );

  @POST(ApiConstants.uploadMultiple)
  @MultiPart()
  Future<dynamic> uploadMultipleImages(
    @Part(name: 'images') List<File> images,
  );

  // ========================== Badges ==========================
  
  @GET(ApiConstants.badges)
  Future<dynamic> getBadges();

  @GET(ApiConstants.myBadges)
  Future<dynamic> getMyBadges();
}
