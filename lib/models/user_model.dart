import 'package:app5/models/equipment_model.dart';
import 'package:app5/models/exercise_model.dart';

class User {
  final String userId;
  final String userFullName;
  final String userDescription;
  final String userAddress;
  final int userAge;
  final String userGender;
  int totalExerciseCompleted = 0;
  int totalEquipmentHandOvered = 0;
  final List<Exercise> userExerciseList;
  final List<Equipment> userEquipmentList;
  final List<Exercise> favouriteExerciseList;
  final List<Equipment> favouriteEquipmentList;

  User({
    required this.userId,
    // required this.totalExerciseCompleted,
    //  required this.totalEquipmentHandOvered,
    required this.userFullName,
    required this.userDescription,
    required this.userAddress,
    required this.userAge,
    required this.userGender,
    required this.userExerciseList,
    required this.userEquipmentList,
    required this.favouriteExerciseList,
    required this.favouriteEquipmentList,
  });

  // add to the exercise to userList from exercise list

  void addExercise(Exercise exercise) {
    userExerciseList.add(exercise);
  }

  // remove exercise from userexercise List

  void removeExercise(Exercise exercise) {
    userExerciseList.remove(exercise);
  }

//add favorite Exercise to the user Exercise List

  void addFavoriteExercise(Exercise exercise) {
    favouriteExerciseList.add(exercise);
  }
//remove favorite Exercise from the user Exercise List

  void removeFavoriteExercise(Exercise exercise) {
    favouriteExerciseList.remove(exercise);
  }

// add to the equipment to userList from equipment list

  void addEquipment(Equipment equipment) {
    userEquipmentList.add(equipment);
  }

  // remove equipment from user equipment List

  void removeEquipment(Equipment equipment) {
    userEquipmentList.remove(equipment);
  }

//add favorite equipment to the user equipment List

  void addFavoriteEquipment(Equipment equipment) {
    favouriteEquipmentList.add(equipment);
  }
//remove favorite equipment from the user equipment List

  void removeFavoriteEquipment(Equipment equipment) {
    favouriteEquipmentList.remove(equipment);
  }

  //calculate the total minutes spend

  int totalMinutes() {
    int totalMinutes = 0;

//itarate the userexerciselist
    for (var exercise in userExerciseList) {
      totalMinutes += exercise.noOfTimeWorked;
    }

//itarate the userequipmentlist
    for (var equipment in userEquipmentList) {
      totalMinutes += equipment.noOfTimeUsage;
    }

    return totalMinutes;
  }

  //implementtaion of mark as done method of exercise

  void markAsDoneExercise(int exerciseId) {
    final exercise =
        userExerciseList.firstWhere((exercise) => exercise.id == exerciseId);

    exercise.isCompleted == true;

    //remove the exercise from userexercise list

    removeExercise(exercise);

    totalExerciseCompleted++;
  }

  // implementation of mark as done method of equipment

  void markAsDoneEquipment(int equipmentId) {
    //identifying the expected equipment

    final equipment = userEquipmentList
        .firstWhere((equipment) => equipment.id == equipmentId);

    equipment.isHandOvered = true;

    //remove equipment from equipment list

    removeEquipment(equipment);

    totalEquipmentHandOvered++;
  }

  //calculate total calaories burnedby user

  double calculateTotalCaloriesBurned() {
    double totalCaloriesBurned = 0;

    for (var equipment in userEquipmentList) {
      totalCaloriesBurned += equipment.noOfCalories;


    }
      if (totalCaloriesBurned > 0 && totalCaloriesBurned <= 10) {
       totalCaloriesBurned =totalCaloriesBurned / 10;
      }
      if (totalCaloriesBurned > 10 && totalCaloriesBurned <= 100) {
       totalCaloriesBurned= totalCaloriesBurned / 100;
      }
      if (totalCaloriesBurned > 100 && totalCaloriesBurned <= 1000) {
        totalCaloriesBurned=totalCaloriesBurned / 1000;
      }
    return totalCaloriesBurned;
  }
}
