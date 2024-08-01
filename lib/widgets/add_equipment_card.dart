import 'package:app5/utils/colors.dart';
import 'package:flutter/material.dart';

class AddEquipmentCard extends StatefulWidget {
  final String equipmentTitle;
  final String equipmentImageUrl;
  final String equipmentDescription;
  final int noOfTimeUsage;
  final double noOfCalaries;
  final bool isAddEquipment;
  final bool isAddFavoriteEquipment;
  final Function() toggaleEquipment;
  final Function() toggleFavoriteEquipment;

  const AddEquipmentCard(
      {super.key,
      required this.equipmentTitle,
      required this.equipmentImageUrl,
      required this.equipmentDescription,
      required this.noOfTimeUsage,
      required this.noOfCalaries,
      required this.isAddEquipment,
      required this.isAddFavoriteEquipment,
      required this.toggaleEquipment,
      required this.toggleFavoriteEquipment});

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: wBtnTextColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),

            // blurStyle: BlurStyle.solid
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.equipmentTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: wPrimaryBlackColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.equipmentImageUrl,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                // const SizedBox(
                //   width: 20,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.55,
                      child: Text(
                        widget.equipmentDescription,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: wCardTextColor),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Time: ${widget.noOfTimeUsage.toString()} min and ${widget.noOfCalaries.toString()} calories\nburned",
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: wPrimaryBlueColor),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: wSubTextColor.withOpacity(0.4),
                  ),
                  child: IconButton(
                    onPressed: () {

                     // print("click");
                      widget.toggaleEquipment();
                    },
                    icon: widget.isAddEquipment
                        ? const Icon(
                            Icons.remove,
                            color: wEquipmentBtnBlueColor,
                          )
                        : const Icon(
                            Icons.add,
                            color: wEquipmentBtnBlueColor,
                          ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: wSubTextColor.withOpacity(0.4),
                  ),
                  child: IconButton(
                    onPressed: () {
                      widget.toggleFavoriteEquipment();
                    },
                    icon: widget.isAddFavoriteEquipment? const Icon(Icons.favorite,
                        color: wEquipmentBtnRedColor): const Icon(Icons.favorite_outline,
                        color: wEquipmentBtnRedColor),
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
