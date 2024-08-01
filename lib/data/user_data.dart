import 'package:app5/models/equipment_model.dart';
import 'package:app5/models/exercise_model.dart';
import 'package:app5/models/user_model.dart';


 
   User user = User(
      userId: "123456",
      userFullName: "John Doe",
      userAge: 30,
      userGender: "Male",
      userAddress: "123 Main St, City, Country",
      userDescription: "Fitness enthusiast",
     // totalExerciseCompleted: 0,
     // totalEquipmentHandOvered: 0,
      userExerciseList: [
        Exercise(
            exerciseName: "Push-ups",
            exerciseImageUrl: "assets/exercises/cobra.png",
            noOfTimeWorked: 15,
            id: 0,
            isCompleted: false),
        Exercise(
          exerciseName: "Squats",
          exerciseImageUrl: "assets/exercises/downward-facing.png",
          noOfTimeWorked: 20,
          id: 1,
          isCompleted: false,
        ),
      ],
      userEquipmentList: [
        Equipment(
          id: 1,
          equipmentName: "Resistance Bands",
          equipmentDescription: "Elastic bands used for resistance exercises.",
          equipmentImageUrl: "assets/equipments/checklist.png",
          noOfTimeUsage: 20,
          isHandOvered: false,
          noOfCalories: 150,
        ),
        Equipment(
          id: 2,
          equipmentName: "Yoga Mat",
          equipmentDescription:
              "A mat for practicing yoga and floor exercises.",
          equipmentImageUrl: "assets/equipments/dumbbell.png",
          noOfTimeUsage: 60,
          isHandOvered: false,
          noOfCalories: 300,
        ),
      ],
      favouriteExerciseList: [
        Exercise(
          exerciseName: "Push-ups",
          exerciseImageUrl: "assets/exercises/cobra.png",
          noOfTimeWorked: 15,
          id: 2,
          isCompleted: false,
        ),
      ],
      favouriteEquipmentList: [
        Equipment(
          id: 3,
          equipmentName: "Dumbbells",
          equipmentDescription: "Weights used for strength training.",
          equipmentImageUrl: "assets/equipments/dumbbell.png",
          noOfTimeUsage: 30,
          isHandOvered: false,
          noOfCalories: 200,
        ),
      ],
    );
  
