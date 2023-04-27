import 'package:beep_operator/core/responsive/responsive.dart';
import 'package:beep_operator/core/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkGridTile extends StatelessWidget {
  final int gridCount;
  final String? subTitle;
  final bool isTrue;
  final bool isAxis;

  const WorkGridTile({super.key, this.subTitle, this.gridCount = 0, this.isTrue = true, this.isAxis = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isAxis ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (Responsive.isDesktop(context)) SizedBox(height: Get.width * .03),
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: (gridCount % 3 == 1) ? Colors.grey.shade100 : Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Center(
            child: Text(
              gridCount.toString(),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: (gridCount % 3 == 1) ? Theme.of(context).primaryColor : Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: !Responsive.isDesktop(context) ? defaultPadding : defaultPadding / 2),
        Text(
          "Step $gridCount",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: !Responsive.isDesktop(context) ? defaultPadding : defaultPadding / 2),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ",
          textAlign: isAxis ? TextAlign.start : TextAlign.end,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey, height: 1.8),
        ),
      ],
    );
  }
}
