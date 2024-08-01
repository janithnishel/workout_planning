import 'package:app5/utils/colors.dart';
import 'package:flutter/material.dart';

class FavoriteWorkOutCard extends StatefulWidget {
  final String exerciseName;
  final String exerciseIamgeUrl;
  final int noOfTimeWorked;

  const FavoriteWorkOutCard(
      {super.key,
      required this.exerciseName,
      required this.exerciseIamgeUrl,
      required this.noOfTimeWorked});

  @override
  State<FavoriteWorkOutCard> createState() => _FavoriteWorkOutCardState();
}

class _FavoriteWorkOutCardState extends State<FavoriteWorkOutCard> {
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
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.exerciseName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: wPrimaryBlackColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              widget.exerciseIamgeUrl,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "${widget.noOfTimeWorked.toString()} minutes",
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: wCardTextColor),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: wEquipmentBtnRedColor,
                ),
                
                //
                )
          ],
        ),
      ),
    );
  }
}
