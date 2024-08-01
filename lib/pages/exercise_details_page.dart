import 'package:app5/models/exercise_model.dart';
import 'package:app5/utils/colors.dart';
import 'package:app5/widgets/activity_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExerciseDetails extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseDescription;
  final List<Exercise> exerciseList;

  const ExerciseDetails(
      {super.key,
      required this.exerciseTitle,
      required this.exerciseDescription,
      required this.exerciseList});

  @override
  State<ExerciseDetails> createState() => _ExerciseDetailsState();
}

class _ExerciseDetailsState extends State<ExerciseDetails> {
  final DateFormat dateFormat = DateFormat("EEEE, MMMM dd");
  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formatedDate = dateFormat.format(now);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        foregroundColor: wPrimaryBlackColor,
        backgroundColor: wPrimaryWhiteColor,
        titleSpacing: -5,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              formatedDate,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: wSubTextColor),
            ),
            const SizedBox(height: 5,),
            Text(
              widget.exerciseTitle,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: wPrimaryBlackColor),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            children: [
              Text(
                widget.exerciseDescription,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: wPrimaryTextColor),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap:true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 5/5.5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 25),
                itemCount: widget.exerciseList.length,
                itemBuilder: (context, index) {
                  final a = widget.exerciseList[index];
                  return ActivityCard(
                      title: a.exerciseName,
                      imageUrl: a.exerciseImageUrl,
                      description: "${a.noOfTimeWorked} mins of workout");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
