import 'package:app5/utils/colors.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  const ActivityCard(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
  

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffF5F5F5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: wPrimaryBlackColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              imageUrl,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: wPrimaryLightBlueColor,
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
