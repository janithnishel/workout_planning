import 'package:app5/utils/colors.dart';
import 'package:flutter/material.dart';

class ProgressCard extends StatefulWidget {
  final int totalValue;
  final double progressValue;
  const ProgressCard(
      {super.key, required this.totalValue, required this.progressValue});

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.totalValue).toInt();
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
            colors: [wGradiantLightBlueColor, wGradiantDarkBlueColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Proteins, Fats,water & \nCarbohydrates",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
                color: wPrimaryWhiteColor,
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            LinearProgressIndicator(
              value: widget.progressValue,
              backgroundColor: wGradiantDarkBlueColor,
              valueColor: const AlwaysStoppedAnimation(wPrimaryWhiteColor),
              minHeight: 15,
              borderRadius: BorderRadius.circular(15),
            ),
            // const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTag("Done", done.toString()),
                  _buildTag("Total", widget.totalValue.toString()),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String done, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          done,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: wPrimaryWhiteColor,
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          value.toString(),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: wPrimaryWhiteColor,
          ),
        ),
      ],
    );
  }
}
