// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedTimelineResponse _$FeedTimelineResponseFromJson(
        Map<String, dynamic> json) =>
    FeedTimelineResponse(
      json['num_results'] as int?,
      json['more_available'] as bool?,
      json['auto_load_more_enabled'] as bool?,
      (json['feed_items'] as List<dynamic>?)
          ?.map((e) => FeedTimelineResponseFeedItemsItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      json['is_direct_v2_enabled'] as bool?,
      json['next_max_id'] as String?,
      json['view_state_version'] as String?,
      json['client_feed_changelist_applied'] as bool?,
      json['client_session_id'] as String?,
      (json['client_gap_enforcer_matrix'] as List<dynamic>?)
          ?.map((e) => FeedTimelineResponseClientGapEnforcerMatrixItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      json['status'] as String?,
    )..paginationInfo = json['pagination_info'] == null
        ? null
        : FeedTimelineResponsePaginationInfo.fromJson(
            json['pagination_info'] as Map<String, dynamic>);

Map<String, dynamic> _$FeedTimelineResponseToJson(
        FeedTimelineResponse instance) =>
    <String, dynamic>{
      'num_results': instance.numResults,
      'more_available': instance.moreAvailable,
      'auto_load_more_enabled': instance.autoLoadMoreEnabled,
      'feed_items': instance.feedItems,
      'is_direct_v2_enabled': instance.isDirectV2Enabled,
      'next_max_id': instance.nextMaxId,
      'pagination_info': instance.paginationInfo,
      'view_state_version': instance.viewStateVersion,
      'client_feed_changelist_applied': instance.clientFeedChangelistApplied,
      'client_session_id': instance.clientSessionId,
      'client_gap_enforcer_matrix': instance.clientGapEnforcerMatrix,
      'status': instance.status,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem
    _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItemFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem(
          json['width'] as int?,
          json['height'] as int?,
          json['url'] as String?,
          (json['estimated_scans_sizes'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItemToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem
                instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2
    _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2FromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2(
          (json['candidates'] as List<dynamic>?)
              ?.map((e) =>
                  FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String,
    dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2ToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2 instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatusFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus(
          json['following'] as bool?,
          json['outgoing_request'] as bool?,
          json['is_muting_reel'] as bool?,
          json['is_bestie'] as bool?,
          json['is_restricted'] as bool?,
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatusToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus
                instance) =>
        <String, dynamic>{
          'following': instance.following,
          'outgoing_request': instance.outgoingRequest,
          'is_muting_reel': instance.isMutingReel,
          'is_bestie': instance.isBestie,
          'is_restricted': instance.isRestricted,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdUser
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUserFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdUser(
          json['pk'] as int?,
          json['username'] as String?,
          json['full_name'] as String?,
          json['is_private'] as bool?,
          json['profile_pic_url'] as String?,
          json['profile_pic_id'] as String?,
          json['friendship_status'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus
                  .fromJson(json['friendship_status'] as Map<String, dynamic>),
          json['is_verified'] as bool?,
          json['has_anonymous_profile_picture'] as bool?,
          json['is_unpublished'] as bool?,
          json['is_favorite'] as bool?,
          json['latest_reel_media'] as int?,
        );

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdUserToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'friendship_status': instance.friendshipStatus,
      'is_verified': instance.isVerified,
      'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
      'is_unpublished': instance.isUnpublished,
      'is_favorite': instance.isFavorite,
      'latest_reel_media': instance.latestReelMedia,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem
    _$FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItemFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem(
          json['pk'] as int?,
          json['username'] as String?,
          json['full_name'] as String?,
          json['is_private'] as bool?,
          json['profile_pic_url'] as String?,
          json['profile_pic_id'] as String?,
          json['is_verified'] as bool?,
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItemToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem
                instance) =>
        <String, dynamic>{
          'pk': instance.pk,
          'username': instance.username,
          'full_name': instance.fullName,
          'is_private': instance.isPrivate,
          'profile_pic_url': instance.profilePicUrl,
          'profile_pic_id': instance.profilePicId,
          'is_verified': instance.isVerified,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUserFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser(
          json['pk'] as int?,
          json['username'] as String?,
          json['full_name'] as String?,
          json['is_private'] as bool?,
          json['profile_pic_url'] as String?,
          json['profile_pic_id'] as String?,
          json['is_verified'] as bool?,
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUserToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser
                instance) =>
        <String, dynamic>{
          'pk': instance.pk,
          'username': instance.username,
          'full_name': instance.fullName,
          'is_private': instance.isPrivate,
          'profile_pic_url': instance.profilePicUrl,
          'profile_pic_id': instance.profilePicId,
          'is_verified': instance.isVerified,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem(
          json['user'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser
                  .fromJson(json['user'] as Map<String, dynamic>),
          (json['position'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList(),
          json['start_time_in_video_in_sec'],
          json['duration_in_video_in_sec'],
        );

Map<String,
    dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem instance) =>
    <String, dynamic>{
      'user': instance.user,
      'position': instance.position,
      'start_time_in_video_in_sec': instance.startTimeInVideoInSec,
      'duration_in_video_in_sec': instance.durationInVideoInSec,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdUsertags
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdUsertags(
          (json['i_n'] as List<dynamic>?)
              ?.map((e) =>
                  FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdUsertags instance) =>
    <String, dynamic>{
      'i_n': instance.IN,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatusFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus(
          json['following'] as bool?,
          json['outgoing_request'] as bool?,
          json['is_muting_reel'] as bool?,
          json['is_bestie'] as bool?,
          json['is_restricted'] as bool?,
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatusToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus
                instance) =>
        <String, dynamic>{
          'following': instance.following,
          'outgoing_request': instance.outgoingRequest,
          'is_muting_reel': instance.isMutingReel,
          'is_bestie': instance.isBestie,
          'is_restricted': instance.isRestricted,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser(
          json['pk'] as int?,
          json['username'] as String?,
          json['full_name'] as String?,
          json['is_private'] as bool?,
          json['profile_pic_url'] as String?,
          json['profile_pic_id'] as String?,
          json['friendship_status'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus
                  .fromJson(json['friendship_status'] as Map<String, dynamic>),
          json['is_verified'] as bool?,
          json['has_anonymous_profile_picture'] as bool?,
          json['is_unpublished'] as bool?,
          json['is_favorite'] as bool?,
          json['latest_reel_media'] as int?,
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser instance) =>
        <String, dynamic>{
          'pk': instance.pk,
          'username': instance.username,
          'full_name': instance.fullName,
          'is_private': instance.isPrivate,
          'profile_pic_url': instance.profilePicUrl,
          'profile_pic_id': instance.profilePicId,
          'friendship_status': instance.friendshipStatus,
          'is_verified': instance.isVerified,
          'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
          'is_unpublished': instance.isUnpublished,
          'is_favorite': instance.isFavorite,
          'latest_reel_media': instance.latestReelMedia,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdCaption
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAdCaption(
          json['pk'] as int?,
          json['user_id'] as int?,
          json['text'] as String?,
          json['type'] as int?,
          json['created_at'] as int?,
          json['created_at_utc'] as int?,
          json['content_type'] as String?,
          json['status'] as String?,
          json['bit_flags'] as int?,
          json['user'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser.fromJson(
                  json['user'] as Map<String, dynamic>),
          json['did_report_as_spam'] as bool?,
          json['share_enabled'] as bool?,
          json['media_id'] as int?,
        );

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdCaption instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'user_id': instance.userId,
      'text': instance.text,
      'type': instance.type,
      'created_at': instance.createdAt,
      'created_at_utc': instance.createdAtUtc,
      'content_type': instance.contentType,
      'status': instance.status,
      'bit_flags': instance.bitFlags,
      'user': instance.user,
      'did_report_as_spam': instance.didReportAsSpam,
      'share_enabled': instance.shareEnabled,
      'media_id': instance.mediaId,
    };

FeedTimelineResponseFeedItemsItemMediaOrAd
    _$FeedTimelineResponseFeedItemsItemMediaOrAdFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemMediaOrAd(
          json['taken_at'] as int?,
          json['pk'] as int?,
          json['id'] as String?,
          json['device_timestamp'] as int?,
          json['media_type'] as int?,
          json['code'] as String?,
          json['client_cache_key'] as String?,
          json['filter_type'] as int?,
          json['image_versions2'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2
                  .fromJson(json['image_versions2'] as Map<String, dynamic>),
          json['original_width'] as int?,
          json['original_height'] as int?,
          json['user'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemMediaOrAdUser.fromJson(
                  json['user'] as Map<String, dynamic>),
          json['can_viewer_reshare'] as bool?,
          json['caption_is_edited'] as bool?,
          json['direct_reply_to_author_enabled'] as bool?,
          json['comment_likes_enabled'] as bool?,
          json['comment_threading_enabled'] as bool?,
          json['has_more_comments'] as bool?,
          json['max_num_visible_preview_comments'] as int?,
          json['preview_comments'] as List<dynamic>?,
          json['can_view_more_preview_comments'] as bool?,
          json['comment_count'] as int?,
          json['inline_composer_display_condition'] as String?,
          json['inline_composer_imp_trigger_time'] as int?,
          json['like_count'] as int?,
          json['has_liked'] as bool?,
          (json['top_likers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          (json['facepile_top_likers'] as List<dynamic>?)
              ?.map((e) =>
                  FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          json['photo_of_you'] as bool?,
          json['usertags'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemMediaOrAdUsertags.fromJson(
                  json['usertags'] as Map<String, dynamic>),
          json['caption'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemMediaOrAdCaption.fromJson(
                  json['caption'] as Map<String, dynamic>),
          json['can_viewer_save'] as bool?,
          json['organic_tracking_token'] as String?,
          json['preview'] as String?,
          json['inventory_source'] as String?,
          json['is_seen'] as bool?,
          json['is_eof'] as bool?,
        );

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAd instance) =>
    <String, dynamic>{
      'taken_at': instance.takenAt,
      'pk': instance.pk,
      'id': instance.id,
      'device_timestamp': instance.deviceTimestamp,
      'media_type': instance.mediaType,
      'code': instance.code,
      'client_cache_key': instance.clientCacheKey,
      'filter_type': instance.filterType,
      'image_versions2': instance.imageVersions2,
      'original_width': instance.originalWidth,
      'original_height': instance.originalHeight,
      'user': instance.user,
      'can_viewer_reshare': instance.canViewerReshare,
      'caption_is_edited': instance.captionIsEdited,
      'direct_reply_to_author_enabled': instance.directReplyToAuthorEnabled,
      'comment_likes_enabled': instance.commentLikesEnabled,
      'comment_threading_enabled': instance.commentThreadingEnabled,
      'has_more_comments': instance.hasMoreComments,
      'max_num_visible_preview_comments': instance.maxNumVisiblePreviewComments,
      'preview_comments': instance.previewComments,
      'can_view_more_preview_comments': instance.canViewMorePreviewComments,
      'comment_count': instance.commentCount,
      'inline_composer_display_condition':
          instance.inlineComposerDisplayCondition,
      'inline_composer_imp_trigger_time': instance.inlineComposerImpTriggerTime,
      'like_count': instance.likeCount,
      'has_liked': instance.hasLiked,
      'top_likers': instance.topLikers,
      'facepile_top_likers': instance.facepileTopLikers,
      'photo_of_you': instance.photoOfYou,
      'usertags': instance.usertags,
      'caption': instance.caption,
      'can_viewer_save': instance.canViewerSave,
      'organic_tracking_token': instance.organicTrackingToken,
      'preview': instance.preview,
      'inventory_source': instance.inventorySource,
      'is_seen': instance.isSeen,
      'is_eof': instance.isEof,
    };

FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUserFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser(
          json['pk'] as String?,
          json['username'] as String?,
          json['full_name'] as String?,
          json['is_private'] as bool?,
          json['profile_pic_url'] as String?,
          json['profile_pic_id'] as String?,
          json['is_verified'] as bool?,
          json['has_anonymous_profile_picture'] as bool?,
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUserToJson(
            FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser
                instance) =>
        <String, dynamic>{
          'pk': instance.pk,
          'username': instance.username,
          'full_name': instance.fullName,
          'is_private': instance.isPrivate,
          'profile_pic_url': instance.profilePicUrl,
          'profile_pic_id': instance.profilePicId,
          'is_verified': instance.isVerified,
          'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
        };

FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard(
          json['user'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser
                  .fromJson(json['user'] as Map<String, dynamic>),
          json['algorithm'] as String?,
          json['social_context'] as String?,
          json['icon'] as String?,
          json['caption'] as String?,
          json['media_ids'] as List<dynamic>?,
          json['thumbnail_urls'] as List<dynamic>?,
          json['large_urls'] as List<dynamic>?,
          json['media_infos'] as List<dynamic>?,
          (json['value'] as num?)?.toDouble(),
          json['followed_by'] as bool?,
          json['is_new_suggestion'] as bool?,
          json['uuid'] as String?,
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardToJson(
            FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard
                instance) =>
        <String, dynamic>{
          'user': instance.user,
          'algorithm': instance.algorithm,
          'social_context': instance.socialContext,
          'icon': instance.icon,
          'caption': instance.caption,
          'media_ids': instance.mediaIds,
          'thumbnail_urls': instance.thumbnailUrls,
          'large_urls': instance.largeUrls,
          'media_infos': instance.mediaInfos,
          'value': instance.value,
          'followed_by': instance.followedBy,
          'is_new_suggestion': instance.isNewSuggestion,
          'uuid': instance.uuid,
        };

FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCardFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard(
          json['title'] as String?,
          json['subtitle'] as String?,
          json['id'] as String?,
          json['type'] as String?,
          json['primary_button_text'] as String?,
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCardToJson(
            FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard
                instance) =>
        <String, dynamic>{
          'title': instance.title,
          'subtitle': instance.subtitle,
          'id': instance.id,
          'type': instance.type,
          'primary_button_text': instance.primaryButtonText,
        };

FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem(
          json['user_card'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard
                  .fromJson(json['user_card'] as Map<String, dynamic>),
          json['upsell_ci_card'] == null
              ? null
              : FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard
                  .fromJson(json['upsell_ci_card'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemToJson(
            FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem
                instance) =>
        <String, dynamic>{
          'user_card': instance.userCard,
          'upsell_ci_card': instance.upsellCiCard,
        };

FeedTimelineResponseFeedItemsItemSuggestedUsers
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemSuggestedUsers(
          json['type'] as int?,
          (json['suggestion_cards'] as List<dynamic>?)
              ?.map((e) =>
                  FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          json['landing_site_type'] as String?,
          json['title'] as String?,
          json['view_all_text'] as String?,
          json['landing_site_title'] as String?,
          json['netego_type'] as String?,
          json['is_unit_dismissable'] as bool?,
          json['ranking_algorithm'] as String?,
          json['upsell_fb_pos'] as String?,
          json['auto_dvance'] as String?,
          json['id'] as String?,
          json['tracking_token'] as String?,
        );

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemSuggestedUsersToJson(
        FeedTimelineResponseFeedItemsItemSuggestedUsers instance) =>
    <String, dynamic>{
      'type': instance.type,
      'suggestion_cards': instance.suggestionCards,
      'landing_site_type': instance.landingSiteType,
      'title': instance.title,
      'view_all_text': instance.viewAllText,
      'landing_site_title': instance.landingSiteTitle,
      'netego_type': instance.netegoType,
      'is_unit_dismissable': instance.isUnitDismissable,
      'ranking_algorithm': instance.rankingAlgorithm,
      'upsell_fb_pos': instance.upsellFbPos,
      'auto_dvance': instance.autoDvance,
      'id': instance.id,
      'tracking_token': instance.trackingToken,
    };

FeedTimelineResponseFeedItemsItemStoriesNetego
    _$FeedTimelineResponseFeedItemsItemStoriesNetegoFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseFeedItemsItemStoriesNetego(
          json['tracking_token'] as String?,
          json['hide_unit_if_seen'] as String?,
          json['id'] as int?,
        );

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemStoriesNetegoToJson(
        FeedTimelineResponseFeedItemsItemStoriesNetego instance) =>
    <String, dynamic>{
      'tracking_token': instance.trackingToken,
      'hide_unit_if_seen': instance.hideUnitIfSeen,
      'id': instance.id,
    };

FeedTimelineResponseFeedItemsItem _$FeedTimelineResponseFeedItemsItemFromJson(
        Map<String, dynamic> json) =>
    FeedTimelineResponseFeedItemsItem(
      json['media_or_ad'] == null
          ? null
          : FeedTimelineResponseFeedItemsItemMediaOrAd.fromJson(
              json['media_or_ad'] as Map<String, dynamic>),
      json['suggested_users'] == null
          ? null
          : FeedTimelineResponseFeedItemsItemSuggestedUsers.fromJson(
              json['suggested_users'] as Map<String, dynamic>),
      json['stories_netego'] == null
          ? null
          : FeedTimelineResponseFeedItemsItemStoriesNetego.fromJson(
              json['stories_netego'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemToJson(
        FeedTimelineResponseFeedItemsItem instance) =>
    <String, dynamic>{
      'media_or_ad': instance.mediaOrAd,
      'suggested_users': instance.suggestedUsers,
      'stories_netego': instance.storiesNetego,
    };

FeedTimelineResponsePaginationInfo _$FeedTimelineResponsePaginationInfoFromJson(
        Map<String, dynamic> json) =>
    FeedTimelineResponsePaginationInfo(
      json['source'],
      json['group_id'],
    );

Map<String, dynamic> _$FeedTimelineResponsePaginationInfoToJson(
        FeedTimelineResponsePaginationInfo instance) =>
    <String, dynamic>{
      'source': instance.source,
      'group_id': instance.groupId,
    };

FeedTimelineResponseClientGapEnforcerMatrixItem
    _$FeedTimelineResponseClientGapEnforcerMatrixItemFromJson(
            Map<String, dynamic> json) =>
        FeedTimelineResponseClientGapEnforcerMatrixItem(
          (json['list'] as List<dynamic>?)?.map((e) => e as int).toList(),
        );

Map<String, dynamic> _$FeedTimelineResponseClientGapEnforcerMatrixItemToJson(
        FeedTimelineResponseClientGapEnforcerMatrixItem instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
