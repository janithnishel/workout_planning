import 'package:app5/data/equipment_data.dart';
import 'package:app5/data/exercises_data.dart';
import 'package:app5/data/user_data.dart';
import 'package:app5/models/equipment_model.dart';
import 'package:app5/models/exercise_model.dart';
import 'package:app5/utils/colors.dart';
import 'package:app5/widgets/add_equipment_card.dart';
import 'package:app5/widgets/add_exercises_card.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  //fetch the user details
  final usereDetails = user;

  //fetch exercise details
  final exerciseList = ExerciseData().exerciseList;

  //fetch equipment details

  final equipmentList = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, ${user.userFullName}",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: wPrimaryBlackColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Lets Add Some Workouts and Equipment for today!",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: wPrimaryLightBlueColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "All Exercises",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: wPrimaryBlackColor),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.31,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: exerciseList.length,
                itemBuilder: (context, index) {
                  Exercise ex = exerciseList[index];

                  return AddExerciseCard(
                    exerciseTitle: ex.exerciseName,
                    exerciseImageUrl: ex.exerciseImageUrl,
                    exercisnoOfTimeWorked: ex.noOfTimeWorked,
                    toggleExercise: () {
                      setState(() {
                        if (usereDetails.userExerciseList.contains(ex)) {
                          usereDetails.removeExercise(ex);
                        } else {
                          usereDetails.addExercise(ex);
                        }
                      });
                    },
                    isAddexercise: usereDetails.userExerciseList.contains(ex),
                    toggleFavoritExercise: () {
                      setState(() {
                        if (usereDetails.favouriteExerciseList.contains(ex)) {
                          usereDetails.removeFavoriteExercise(ex);
                         // print("remove");
                        } else {
                          usereDetails.addFavoriteExercise(ex);
                         // print("add");
                        }
                      });
                    },
                    isAddFavorite:
                        usereDetails.favouriteExerciseList.contains(ex),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "All Equipment",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: wPrimaryBlackColor),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.33,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: equipmentList.length,
                itemBuilder: (context, index) {
                  Equipment equ = equipmentList[index];
                  return AddEquipmentCard(
                    equipmentTitle: equ.equipmentName,
                    equipmentImageUrl: equ.equipmentImageUrl,
                    equipmentDescription: equ.equipmentDescription,
                    noOfTimeUsage: equ.noOfTimeUsage,
                    noOfCalaries: equ.noOfCalories,
                    toggaleEquipment: () {
                      setState(() {
                        if (usereDetails.userEquipmentList.contains(equ)) {
                          usereDetails.removeEquipment(equ);

                         // print("remove");
                        } else {
                          usereDetails.addEquipment(equ);

                         // print("add");
                        }
                      });
                    },
                    isAddEquipment:
                        usereDetails.userEquipmentList.contains(equ),
                    toggleFavoriteEquipment: () {
                      setState(() {
                        if (usereDetails.favouriteEquipmentList.contains(equ)) {
                          usereDetails.removeFavoriteEquipment(equ);
                        } else {
                          usereDetails.addFavoriteEquipment(equ);
                        }
                      });
                    },
                    isAddFavoriteEquipment:
                        usereDetails.favouriteEquipmentList.contains(equ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
