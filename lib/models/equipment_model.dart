class Equipment {
  final int id;
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfTimeUsage;
 double noOfCalories;
  bool isHandOvered;
  Equipment({
    required this.id,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImageUrl,
    required this.noOfTimeUsage,
    required this.noOfCalories,
    required this.isHandOvered,
  });
}
