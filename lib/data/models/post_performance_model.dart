class PostPerformanceModel {
  final dynamic postId;
  final int userId;
  final String imageUrl;
  final DateTime? createdAt;
  //final DateTime? updatedAt;

  final int gemsTotal;
  final int gemsToday;
  final int gemsAllTimeHigh;
  final int gemsLikes;
  final int gemsViews;
  final int gemsShares;
  final Map<DateTime, double> likesPerDay;

  PostPerformanceModel({
    required this.postId,
    required this.userId,
    required this.imageUrl,
    required this.createdAt,
    //required this.updatedAt,
    required this.gemsTotal,
    required this.gemsToday,
    required this.gemsAllTimeHigh,
    required this.gemsLikes,
    required this.gemsViews,
    required this.gemsShares,
    required this.likesPerDay,
  });

  factory PostPerformanceModel.fromJson(Map<String, dynamic> json) {
    // Parsing the likesPerDay map
    Map<DateTime, double> likesPerDay = {};
    if (json['likes_per_day'] != null) {
      json['likes_per_day'].forEach((key, value) {
        likesPerDay[DateTime.parse(key)] = value.toDouble();
      });
    }

    return PostPerformanceModel(
      postId: json['post_id'],
      userId: json['user_id'],
      imageUrl: json['image_url'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      //updatedAt: json['updated_at'] != null
          //? DateTime.parse(json['updated_at'])
          //: null,
      gemsTotal: json['gems_total'],
      gemsToday: json['gems_today'],
      gemsAllTimeHigh: json['gems_all_time_high'],
      gemsLikes: json['gems_likes'],
      gemsViews: json['gems_views'],
      gemsShares: json['gems_shares'],
      likesPerDay: likesPerDay,
    );
  }

  Map<String, dynamic> toJson() {
    // Serializing the likesPerDay map
    Map<String, double> likesPerDaySerialized = {};
    likesPerDay.forEach((key, value) {
      likesPerDaySerialized[key.toIso8601String()] = value;
    });

    return {
      'post_id': postId,
      'user_id': userId,
      'image_url': imageUrl,
      'created_at': createdAt?.toIso8601String(),
      //'updated_at': updatedAt?.toIso8601String(),
      'gems_total': gemsTotal,
      'gems_today': gemsToday,
      'gems_all_time_high': gemsAllTimeHigh,
      'gems_likes': gemsLikes,
      'gems_views': gemsViews,
      'gems_shares': gemsShares,
      'likes_per_day': likesPerDaySerialized,
    };
  }
}