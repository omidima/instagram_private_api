import 'package:json_annotation/json_annotation.dart';

part 'timeline_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponse {
	int? numResults;
	bool? moreAvailable;
	bool? autoLoadMoreEnabled;
	List<FeedTimelineResponseFeedItemsItem>? feedItems;
	bool? isDirectV2Enabled;
	String? nextMaxId;
	FeedTimelineResponsePaginationInfo? paginationInfo;
	String? viewStateVersion;
	bool? clientFeedChangelistApplied;
	String? clientSessionId;
	List<FeedTimelineResponseClientGapEnforcerMatrixItem>? clientGapEnforcerMatrix;
	String? status;
  FeedTimelineResponse(
    this.numResults,
    this.moreAvailable,
    this.autoLoadMoreEnabled,
    this.feedItems,
    this.isDirectV2Enabled,
    this.nextMaxId,
    this.viewStateVersion,
    this.clientFeedChangelistApplied,
    this.clientSessionId,
    this.clientGapEnforcerMatrix,
    this.status,
  );

	factory FeedTimelineResponse.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem {
	int? width;
	int? height;
	String? url;
	List<int>? estimatedScansSizes;

	FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem(
			this.width, this.height, this.url, this.estimatedScansSizes);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2 {
	List<FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem> ?candidates;

	FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2(this.candidates);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2FromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus {
	bool? following;
	bool? outgoingRequest;
	bool? isMutingReel;
	bool? isBestie;
	bool? isRestricted;

	FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus(
			this.following,
      this.outgoingRequest,
      this.isMutingReel,
      this.isBestie,
      this.isRestricted);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatusFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatusToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdUser {
	int? pk;
	String ?username;
	String ?fullName;
	bool? isPrivate;
	String? profilePicUrl;
	String? profilePicId;
	FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus? friendshipStatus;
	bool? isVerified;
	bool? hasAnonymousProfilePicture;
	bool? isUnpublished;
	bool? isFavorite;
	int ?latestReelMedia;

	FeedTimelineResponseFeedItemsItemMediaOrAdUser(
      this.pk,
      this.username,
      this.fullName,
      this.isPrivate,
      this.profilePicUrl,
      this.profilePicId,
      this.friendshipStatus,
      this.isVerified,
      this.hasAnonymousProfilePicture,
      this.isUnpublished,
      this.isFavorite,
      this.latestReelMedia);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdUser.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem {
	int? pk;
	String ?username;
	String ?fullName;
	bool? isPrivate;
	String ?profilePicUrl;
	String ?profilePicId;
	bool? isVerified;


	FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem(
      this.pk,
      this.username,
      this.fullName,
      this.isPrivate,
      this.profilePicUrl,
      this.profilePicId,
      this.isVerified);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser {
	int? pk;
	String ?username;
	String ?fullName;
	bool ?isPrivate;
	String? profilePicUrl;
	String? profilePicId;
	bool ?isVerified;

	FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser(
      this.pk,
      this.username,
      this.fullName,
      this.isPrivate,
      this.profilePicUrl,
      this.profilePicId,
      this.isVerified);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem {
	FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser ?user;
	List<double> ?position;
	dynamic startTimeInVideoInSec;
	dynamic durationInVideoInSec;

	FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem(
      this.user,
      this.position,
      this.startTimeInVideoInSec,
      this.durationInVideoInSec);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdUsertags {
	List<FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem>? IN;


	FeedTimelineResponseFeedItemsItemMediaOrAdUsertags(this.IN);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdUsertags.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus {
	bool? following;
	bool ?outgoingRequest;
	bool? isMutingReel;
	bool? isBestie;
	bool? isRestricted;

	FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus(
      this.following,
      this.outgoingRequest,
      this.isMutingReel,
      this.isBestie,
			this.isRestricted);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatusFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatusToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser {
	int? pk;
	String? username;
	String? fullName;
	bool? isPrivate;
	String? profilePicUrl;
	String? profilePicId;
	FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus ?friendshipStatus;
	bool ?isVerified;
	bool ?hasAnonymousProfilePicture;
	bool ?isUnpublished;
	bool ?isFavorite;
	int ?latestReelMedia;

	FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser(
      this.pk,
      this.username,
      this.fullName,
      this.isPrivate,
      this.profilePicUrl,
      this.profilePicId,
      this.friendshipStatus,
      this.isVerified,
      this.hasAnonymousProfilePicture,
      this.isUnpublished,
      this.isFavorite,
      this.latestReelMedia);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAdCaption {
	int? pk;
	int? userId;
	String ?text;
	int? type;
	int? createdAt;
	int? createdAtUtc;
	String? contentType;
	String? status;
	int? bitFlags;
	FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser? user;
	bool? didReportAsSpam;
	bool? shareEnabled;
	int? mediaId;

	FeedTimelineResponseFeedItemsItemMediaOrAdCaption(
      this.pk,
      this.userId,
      this.text,
      this.type,
      this.createdAt,
      this.createdAtUtc,
      this.contentType,
      this.status,
      this.bitFlags,
      this.user,
			this.didReportAsSpam,
      this.shareEnabled,
      this.mediaId);

  factory FeedTimelineResponseFeedItemsItemMediaOrAdCaption.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemMediaOrAd {
	int? takenAt;
	int? pk;
	String ?id;
	int? deviceTimestamp;
	int? mediaType;
	String? code;
	String ?clientCacheKey;
	int ?filterType;
	FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2 ?imageVersions2;
	int? originalWidth;
	int? originalHeight;
	FeedTimelineResponseFeedItemsItemMediaOrAdUser? user;
	bool ?canViewerReshare;
	bool ?captionIsEdited;
	bool ?directReplyToAuthorEnabled;
	bool ?commentLikesEnabled;
	bool ?commentThreadingEnabled;
	bool ?hasMoreComments;
	int? maxNumVisiblePreviewComments;
	List? previewComments;
	bool? canViewMorePreviewComments;
	int? commentCount;
	String ?inlineComposerDisplayCondition;
	int ?inlineComposerImpTriggerTime;
	int ?likeCount;
	bool ?hasLiked;
	List<String>? topLikers;
	List<FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem>? facepileTopLikers;
	bool ?photoOfYou;
	FeedTimelineResponseFeedItemsItemMediaOrAdUsertags? usertags;
	FeedTimelineResponseFeedItemsItemMediaOrAdCaption? caption;
	bool? canViewerSave;
	String? organicTrackingToken;
	String ?preview;
	String ?inventorySource;
	bool ?isSeen;
	bool ?isEof;

	FeedTimelineResponseFeedItemsItemMediaOrAd(
      this.takenAt,
      this.pk,
      this.id,
      this.deviceTimestamp,
      this.mediaType,
      this.code,
      this.clientCacheKey,
      this.filterType,
      this.imageVersions2,
      this.originalWidth,
      this.originalHeight,
      this.user,
      this.canViewerReshare,
      this.captionIsEdited,
      this.directReplyToAuthorEnabled,
      this.commentLikesEnabled,
      this.commentThreadingEnabled,
      this.hasMoreComments,
      this.maxNumVisiblePreviewComments,
      this.previewComments,
      this.canViewMorePreviewComments,
      this.commentCount,
      this.inlineComposerDisplayCondition,
      this.inlineComposerImpTriggerTime,
      this.likeCount,
      this.hasLiked,
      this.topLikers,
      this.facepileTopLikers,
      this.photoOfYou,
      this.usertags,
      this.caption,
      this.canViewerSave,
      this.organicTrackingToken,
      this.preview,
      this.inventorySource,
      this.isSeen,
      this.isEof);

  factory FeedTimelineResponseFeedItemsItemMediaOrAd.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemMediaOrAdFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemMediaOrAdToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser {
	String ?pk;
	String ?username;
	String ?fullName;
	bool ?isPrivate;
	String ?profilePicUrl;
	String? profilePicId;
	bool ?isVerified;
	bool ?hasAnonymousProfilePicture;

	FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser(
      this.pk,
      this.username,
      this.fullName,
      this.isPrivate,
      this.profilePicUrl,
      this.profilePicId,
      this.isVerified,
      this.hasAnonymousProfilePicture);

  factory FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard {
	FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser? user;
	String ?algorithm;
	String ?socialContext;
	String ?icon;
	String ?caption;
	List ?mediaIds;
	List ?thumbnailUrls;
	List ?largeUrls;
	List ?mediaInfos;
	double? value;
	bool? followedBy;
	bool ?isNewSuggestion;
	String ?uuid;

	FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard(
      this.user,
      this.algorithm,
      this.socialContext,
      this.icon,
      this.caption,
      this.mediaIds,
      this.thumbnailUrls,
      this.largeUrls,
      this.mediaInfos,
      this.value,
      this.followedBy,
      this.isNewSuggestion,
      this.uuid);

  factory FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard {
	String ?title;
	String ?subtitle;
	String ?id;
	String ?type;
	String ?primaryButtonText;

	FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard(
      this.title, this.subtitle, this.id, this.type, this.primaryButtonText);

  factory FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCardFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCardToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem {
	FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard ?userCard;
	FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard? upsellCiCard;

	FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem(
      this.userCard, this.upsellCiCard);

  factory FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemSuggestedUsers {
	int? type;
	List<FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem> ?suggestionCards;
	String ?landingSiteType;
	String ?title;
	String ?viewAllText;
	String ?landingSiteTitle;
	String ?netegoType;
	bool? isUnitDismissable;
	String ?rankingAlgorithm;
	String ?upsellFbPos;
	String ?autoDvance;
	String ?id;
	String? trackingToken;

	FeedTimelineResponseFeedItemsItemSuggestedUsers(
      this.type,
      this.suggestionCards,
      this.landingSiteType,
      this.title,
      this.viewAllText,
      this.landingSiteTitle,
      this.netegoType,
      this.isUnitDismissable,
      this.rankingAlgorithm,
      this.upsellFbPos,
      this.autoDvance,
      this.id,
      this.trackingToken);

  factory FeedTimelineResponseFeedItemsItemSuggestedUsers.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemSuggestedUsersFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemSuggestedUsersToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItemStoriesNetego {
	String ?trackingToken;
	String ?hideUnitIfSeen;
	int ?id;

	FeedTimelineResponseFeedItemsItemStoriesNetego(
      this.trackingToken, this.hideUnitIfSeen, this.id);

  factory FeedTimelineResponseFeedItemsItemStoriesNetego.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemStoriesNetegoFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemStoriesNetegoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseFeedItemsItem {
	FeedTimelineResponseFeedItemsItemMediaOrAd ?mediaOrAd;
	FeedTimelineResponseFeedItemsItemSuggestedUsers? suggestedUsers;
	FeedTimelineResponseFeedItemsItemStoriesNetego ?storiesNetego;

	FeedTimelineResponseFeedItemsItem(
      this.mediaOrAd, this.suggestedUsers, this.storiesNetego);

  factory FeedTimelineResponseFeedItemsItem.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseFeedItemsItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseFeedItemsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponsePaginationInfo {
	dynamic source;
	dynamic groupId;

	FeedTimelineResponsePaginationInfo(this.source, this.groupId);

  factory FeedTimelineResponsePaginationInfo.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponsePaginationInfoFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponsePaginationInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedTimelineResponseClientGapEnforcerMatrixItem {
	List<int> ?list;

	FeedTimelineResponseClientGapEnforcerMatrixItem(this.list);

  factory FeedTimelineResponseClientGapEnforcerMatrixItem.fromJson(Map<String, dynamic> json) => _$FeedTimelineResponseClientGapEnforcerMatrixItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedTimelineResponseClientGapEnforcerMatrixItemToJson(this);
}
