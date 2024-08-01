import 'package:app5/utils/colors.dart';
import 'package:flutter/material.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseImageUrl;
  final int exercisnoOfTimeWorked;
  final bool isAddexercise;
  final void Function() toggleExercise;
  final bool isAddFavorite;
  final void Function() toggleFavoritExercise;

  const AddExerciseCard({
    super.key,
    required this.exerciseTitle,
    required this.exerciseImageUrl,
    required this.exercisnoOfTimeWorked,
    required this.toggleExercise,
    required this.isAddexercise,
    required this.isAddFavorite,
    required this.toggleFavoritExercise,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: wBtnTextColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Text(
              widget.exerciseTitle,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: wPrimaryBlackColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              widget.exerciseImageUrl,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "${widget.exercisnoOfTimeWorked.toString()} minutes",
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: wCardTextColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: wSubTextColor.withOpacity(0.4)),
                  child: IconButton(
                      onPressed: () {
                        widget.toggleExercise();
                       // print("clicking");
                      },
                      icon: widget.isAddexercise
                          ? const Icon(Icons.remove, color: wEquipmentBtnBlueColor)
                          : const Icon(Icons.add, color: wEquipmentBtnBlueColor)),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: wSubTextColor.withOpacity(0.4)),
                  child: IconButton(
                    onPressed: () {
                      widget.toggleFavoritExercise();
                  
                    },
                    icon: widget.isAddFavorite? const Icon(
                      Icons.favorite,
                      color: wEquipmentBtnRedColor,
                    ):const Icon(
                      Icons.favorite_outline,
                      color: wEquipmentBtnRedColor,
                    ),
                    //
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
