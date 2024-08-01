import 'package:app5/utils/colors.dart';
import 'package:flutter/material.dart';

class EquipmentCard extends StatelessWidget {
  final String equipmentTitle;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfWorkout;
  final double noOfCalories;

  const EquipmentCard(
      {super.key,required this.equipmentTitle,
      required this.equipmentDescription,
      required this.equipmentImageUrl,
      required this.noOfWorkout,
      required this.noOfCalories});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
           BoxShadow(
            offset: Offset(0, 2),
            color: Colors.black26,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              equipmentTitle,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: wPrimaryBlackColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  equipmentImageUrl,
                  fit: BoxFit.cover,
                  width: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${noOfWorkout.toString()} mins of workout",
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: wPrimaryLightBlueColor),
                    ),
                    Text(
                      "${noOfCalories.toString()} Calories will burn",
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: wPrimaryLightBlueColor),
                    )
                  ],
                )
              ],
            ),
            Text(
              equipmentDescription,
              style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: wCardTextColor),
            )
          ],
        ),
      ),
    );
  }
}
