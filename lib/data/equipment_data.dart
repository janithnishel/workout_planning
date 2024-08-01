import 'package:app5/models/equipment_model.dart';

class EquipmentData {
  final List<Equipment> equipmentList = [
    Equipment(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImageUrl: "assets/equipments/calendar.png",
      noOfTimeUsage: 30,
      noOfCalories: 2,
      isHandOvered: false,
    ),
    Equipment(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImageUrl: "assets/equipments/checklist.png",
      noOfTimeUsage: 20,
      isHandOvered: false,
      noOfCalories: 15,
    ),
    Equipment(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImageUrl: "assets/equipments/dumbbell.png",
      noOfTimeUsage: 60,
      isHandOvered: false,
      noOfCalories: 30,
    ),
    Equipment(
      id: 3,
      equipmentName: "Jump Rope",
      equipmentDescription:
          "A rope used for cardiovascular exercises and coordination training.",
      equipmentImageUrl: "assets/equipments/dumbbells.png",
      noOfTimeUsage: 15,
      isHandOvered: false,
      noOfCalories: 12,
    ),
    Equipment(
      id: 4,
      equipmentName: "Kettlebells",
      equipmentDescription:
          "Weights with a handle used for strength, endurance, and flexibility training.",
      equipmentImageUrl: "assets/equipments/facial-roller.png",
      noOfTimeUsage: 45,
      isHandOvered: false,
      noOfCalories: 25,
    ),
    Equipment(
      id: 5,
      equipmentName: "Exercise Ball",
      equipmentDescription:
          "A large, inflatable ball used for core and stability exercises.",
      equipmentImageUrl: "assets/equipments/stationary-bike.png",
      noOfTimeUsage: 25,
      isHandOvered: false,
      noOfCalories: 15,
    ),
    Equipment(
      id: 6,
      equipmentName: "Pull-up Bar",
      equipmentDescription:
          "A bar mounted to a wall or doorframe for upper body strength exercises.",
      equipmentImageUrl: "assets/equipments/treadmill.png",
      noOfTimeUsage: 40,
      isHandOvered: false,
      noOfCalories: 20,
    ),
    Equipment(
      id: 7,
      equipmentName: "Medicine Ball",
      equipmentDescription:
          "A heavy ball used for strength and coordination exercises.",
      equipmentImageUrl: "assets/equipments/facial-roller.png",
      noOfTimeUsage: 35,
      isHandOvered: false,
      noOfCalories: 18,
    ),
    Equipment(
      id: 8,
      equipmentName: "Bench",
      equipmentDescription:
          "A stable surface for various strength training exercises.",
      equipmentImageUrl: "assets/equipments/dumbbells.png",
      noOfTimeUsage: 55,
      isHandOvered: false,
      noOfCalories: 28,
    ),
    Equipment(
      id: 9,
      equipmentName: "Barbell",
      equipmentDescription:
          "A long metal bar with weights attached to each end, used for resistance training.",
      equipmentImageUrl: "assets/equipments/skipping-rope.png",
      noOfTimeUsage: 50,
      isHandOvered: false,
      noOfCalories: 27,
    ),
  ];
}
