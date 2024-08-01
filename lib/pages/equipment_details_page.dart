import 'package:app5/models/equipment_model.dart';
import 'package:app5/utils/colors.dart';
import 'package:app5/widgets/equipment_card_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EquipmentDetails extends StatefulWidget {
  final String equipmentTitle;
  final String equipmentDetails;
  final List<Equipment> equipmentList;

  const EquipmentDetails({
    super.key,
    required this.equipmentTitle,
    required this.equipmentDetails,
    required this.equipmentList,
  });

  @override
  State<EquipmentDetails> createState() => _EquipmentDetailsState();
}

class _EquipmentDetailsState extends State<EquipmentDetails> {
  DateFormat dateformat = DateFormat("EEEE, MMMM dd");

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formatedDate = dateformat.format(now);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: wPrimaryWhiteColor,
        foregroundColor: wPrimaryBlackColor,
        elevation: 0.5,
        titleSpacing: -5,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              formatedDate,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w900,
                color: wSubTextColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.equipmentTitle,
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Text(
                widget.equipmentDetails,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: wPrimaryTextColor),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 5 / 3),
                itemCount: widget.equipmentList.length,
                itemBuilder: (context, index) {
                  Equipment eq = widget.equipmentList[index];

                  return EquipmentCard(
                    equipmentTitle: eq.equipmentName,
                    equipmentDescription: eq.equipmentDescription,
                    equipmentImageUrl: eq.equipmentImageUrl,
                    noOfWorkout: eq.noOfTimeUsage,
                    noOfCalories: eq.noOfCalories,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
