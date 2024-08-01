import 'package:app5/data/equipment_data.dart';
import 'package:app5/data/exercises_data.dart';
import 'package:app5/data/user_data.dart';
import 'package:app5/pages/equipment_details_page.dart';
import 'package:app5/pages/exercise_details_page.dart';
import 'package:app5/utils/colors.dart';
import 'package:app5/widgets/activity_card.dart';
import 'package:app5/widgets/progres_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //date and time formatting
  final DateFormat formatter = DateFormat('EEEE, MMMM dd ');
  final DateTime now = DateTime.now();

  //get User details

  final userDetails = user;
  final exerciseList = ExerciseData().exerciseList;

  //fetch the equipmet data from the Equipment data class

  final equipmentList = EquipmentData().equipmentList;

  // get the data from user


  @override
  Widget build(BuildContext context) {
    String formattedDate = formatter.format(now);
    
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
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
              Text("Hello , ${userDetails.userFullName}",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: wPrimaryBlackColor,
                  )),
              const SizedBox(
                height: 20,
              ),
               ProgressCard(
                progressValue: userDetails.calculateTotalCaloriesBurned(),
                totalValue: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Today’s Activity",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: wPrimaryBlackColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExerciseDetails(
                            exerciseTitle: "Warmups",
                            exerciseDescription:
                                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                            exerciseList: exerciseList,
                          ),
                        ),
                      );
                    },
                    child: const ActivityCard(
                      title: "Warmup",
                      imageUrl: "assets/exercises/cobra.png",
                      description: "see more...",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EquipmentDetails(
                            equipmentTitle: "Equipment",
                            equipmentDetails:
                                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                            equipmentList: equipmentList,
                          ),
                        ),
                      );
                    },
                    child: const ActivityCard(
                      title: "Equipment",
                      imageUrl: "assets/equipments/dumbbells2.png",
                      description: "see more...",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExerciseDetails(
                            exerciseTitle: "Exercises",
                            exerciseDescription:
                                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                            exerciseList: exerciseList,
                          ),
                        ),
                      );
                    },
                    child: const ActivityCard(
                      title: "Exercise",
                      imageUrl: "assets/exercises/dragging.png",
                      description: "see more...",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExerciseDetails(
                            exerciseTitle: "Stretching",
                            exerciseDescription:
                                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                            exerciseList: exerciseList,
                          ),
                        ),
                      );
                    },
                    child: const ActivityCard(
                      title: "Stretching",
                      imageUrl: "assets/exercises/yoga.png",
                      description: "see more...",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
