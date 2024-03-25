class AccountDevelopmentModel {
  final List<double> values;
  final List<DateTime> timestamps;

  AccountDevelopmentModel({
    required this.values,
    required this.timestamps,
  });

  factory AccountDevelopmentModel.fromJson(Map<String, dynamic> json) {
    var valuesList = List<double>.from(json['values']);
    var timestampList = List<String>.from(json['timestamps']);

    return AccountDevelopmentModel(
      values: valuesList,
      timestamps:
          timestampList.map((timestamp) => DateTime.parse(timestamp)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'values': values,
      'timestamps':
          timestamps.map((timestamp) => timestamp.toIso8601String()).toList(),
    };
  }
}
