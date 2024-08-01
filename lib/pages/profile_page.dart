import 'package:app5/data/user_data.dart';
import 'package:app5/models/equipment_model.dart';
import 'package:app5/models/exercise_model.dart';
import 'package:app5/utils/colors.dart';
import 'package:app5/widgets/profile_card.dart';
import 'package:app5/widgets/progres_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //create the date format
  final dateFormat = DateFormat("EEEE, MMMM dd");

  //fetching realtime date
  final now = DateTime.now();

  //fetching user deatils from use class
  final userDetails = user;

  @override
  Widget build(BuildContext context) {
    String formattedDate = dateFormat.format(now);
    return Scaffold(
        body: SingleChildScrollView(
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
              "Your Progress",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: wPrimaryBlackColor),
            ),
            const SizedBox(
              height: 10,
            ),
            ProgressCard(
                totalValue: 100,
                progressValue: userDetails.calculateTotalCaloriesBurned()),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: wSubTextColor.withOpacity(0.3),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Minutes Spend: ${userDetails.totalMinutes().toString()}",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: wPrimaryBlueColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Total Exercises Completed: ${userDetails.totalExerciseCompleted}",
                      style: TextStyle(
                          color: wPrimaryTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Total Equipments Handovered: ${userDetails.totalEquipmentHandOvered}",
                      style: TextStyle(
                          color: wPrimaryTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your Exercises",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: wPrimaryBlueColor),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: userDetails.userExerciseList.length,
              itemBuilder: (context, index) {
                Exercise ex = userDetails.userExerciseList[index];

                return ProfileCard(
                  exerciseImageUrl: ex.exerciseImageUrl,
                  exerciseName: ex.exerciseName,
                  markAsDone: () {
                    setState(() {
                      userDetails.markAsDoneExercise(ex.id);
                    });
                  },
                  changeColor: [wExerciseBtnBlueColor, wExerciseBtnPinkColor],
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your Equipments",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: wPrimaryBlueColor),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
                itemCount: userDetails.userEquipmentList.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 4.5 / 1),
                itemBuilder: (context, index) {
                  Equipment equ = userDetails.userEquipmentList[index];
                  return ProfileCard(
                    exerciseImageUrl: equ.equipmentImageUrl,
                    exerciseName: equ.equipmentName,
                    markAsDone: () {
                      setState(() {
                        userDetails.markAsDoneEquipment(equ.id);
                      });
                    },
                    changeColor: [
                      wEquipmentBtnBlueColor,
                      wEquipmentBtnRedColor
                    ],
                  );
                })
          ],
        ),
      ),
    ));
  }
}
