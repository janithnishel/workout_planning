import 'package:app5/utils/colors.dart';
import 'package:app5/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  final String exerciseImageUrl;
  final String exerciseName;
  final List<Color> changeColor;
  final void Function() markAsDone;

  const ProfileCard(
      {super.key,
      required this.exerciseImageUrl,
      required this.exerciseName,
      required this.markAsDone,
      required this.changeColor});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 241, 241),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.black38, offset: Offset(0, 2)),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Image.asset(
              widget.exerciseImageUrl,
              width: 50,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.2,
              child: Text(
              overflow: TextOverflow.ellipsis,
                widget.exerciseName,
                style: const TextStyle(
                  
                    fontSize: 15,
                    color: wPrimaryBlackColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                widget.markAsDone();
              },
              child: CustomButton(
                  buttonWidth: 140,
                  buttonHeight: 30,
                  gradiant: widget.changeColor,
                  buttonText: "mark as done",
                  buttonTextFontSize: 16,
                  btnBorderRadius: 25),
            ),
          ],
        ),
      ),
    );
  }
}
