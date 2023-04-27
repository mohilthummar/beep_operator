import 'package:beep_operator/core/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpansionsTitle extends StatelessWidget {
  const ExpansionsTitle({super.key, required this.isExpanded});

  final RxBool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent, hoverColor: Colors.transparent, splashColor: Colors.transparent, focusColor: Colors.transparent),
      child: Obx(
        () => ExpansionTile(
          controlAffinity: ListTileControlAffinity.trailing,
          tilePadding: const EdgeInsets.symmetric(vertical: 0),
          onExpansionChanged: (value) => isExpanded.value = value,
          textColor: Theme.of(context).iconTheme.color,
          iconColor: Theme.of(context).iconTheme.color,
          initiallyExpanded: isExpanded.value,
          trailing: const Icon(Icons.add), // AnimatedSwitcher(duration: Helper().defaultDuration,child: Icon(isExpanded.value ? Icons.remove : Icons.add)),
          title: const Text(
            'Type your question here ?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.only(bottom: defaultPadding),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'This will be the answer',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: defaultPadding),
                      child: Icon(
                        Icons.remove,
                        color: Theme.of(context).iconTheme.color,
                      )),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: defaultPadding / 2, right: defaultPadding * 3.5),
                child: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiu smod tempor incididunt ut labore et dolore',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey, height: 1.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
