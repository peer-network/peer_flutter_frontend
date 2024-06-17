class PostPerformanceModel {
  final dynamic postId;
  final int userId;
  final String imageUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  final int gemsTotal;
  final int gemsToday;
  final int gemsAllTimeHigh;
  final int gemsLikes;
  final int gemsViews;
  final int gemsShares;
  //final List<int> gemsHistorical;

  PostPerformanceModel({
    required this.postId,
    required this.userId,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt,

    required this.gemsTotal,
    required this.gemsToday,
    required this.gemsAllTimeHigh,
    required this.gemsLikes,
    required this.gemsViews,
    required this.gemsShares,
    //required this.gemsHistorical,
    
  });

  factory PostPerformanceModel.fromJson(Map<String, dynamic> json) {
    return PostPerformanceModel(
        //user: json['user'],
        postId:json['post_id'],
        userId: json['user_id'],
        imageUrl: json['image_url'],        
        createdAt: json['created_at'] != null
            ? DateTime.parse(json['created_at'])
            : null,
        updatedAt: json['created_at'] != null
            ? DateTime.parse(json['updated_at'])
            : null,
        
        gemsTotal: json['gems_total'],
        gemsToday: json['gems_today'],
        gemsAllTimeHigh: json['gems_all_time_high'],
        gemsLikes: json['gems_likes'],
        gemsViews: json['gems_views'],
        gemsShares: json['gems_shares'],
        //gemsHistorical: json['gems_historical']
      );
    }

  Map<String, dynamic> toJson() {
      return {
        'post_id': postId,
        'user_id': userId,
        'image_url': imageUrl,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),

        'gems_total': gemsTotal,
        'gems_today': gemsToday,
        'gems_all_time_high': gemsAllTimeHigh,
        'gems_likes': gemsLikes,
        'gems_views': gemsViews,
        'gems_shares': gemsShares,
        //'gems_historical': gemsHistorical,
      };
  }
}