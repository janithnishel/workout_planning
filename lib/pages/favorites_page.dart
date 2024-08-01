import 'package:app5/data/user_data.dart';
import 'package:app5/models/equipment_model.dart';
import 'package:app5/models/exercise_model.dart';
import 'package:app5/utils/colors.dart';
import 'package:app5/widgets/favorite_workout_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  //Acces the user data
  final userData = user;

  //parse the date format to dateformat class
  DateFormat dateFormat = DateFormat("EEEE, MMMM dd");

  //obtain realtime date
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    //fetch the formated date
    String formattedDate = dateFormat.format(dateTime);

    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formattedDate,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: wSubTextColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello, ${user.userFullName}",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: wPrimaryBlackColor,
                    ),
                  ),
                  const Icon(
                    Icons.favorite,
                    color: wEquipmentBtnRedColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Here are all your favorited Exercises",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: wPrimaryLightBlueColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: user.favouriteExerciseList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3/4),
                itemBuilder: (context, index) {
                  Exercise ex = user.favouriteExerciseList[index];
                  return FavoriteWorkOutCard(
                      exerciseName: ex.exerciseName,
                      exerciseIamgeUrl: ex.exerciseImageUrl,
                      noOfTimeWorked: ex.noOfTimeWorked);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Here are all your favorited Equipment",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: wPrimaryLightBlueColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: user.favouriteEquipmentList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3/4),
                  itemBuilder: (context, index) {
                    Equipment equ = user.favouriteEquipmentList[index];

                    return FavoriteWorkOutCard(
                        exerciseName: equ.equipmentName,
                        exerciseIamgeUrl: equ.equipmentImageUrl,
                        noOfTimeWorked: equ.noOfTimeUsage);
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
