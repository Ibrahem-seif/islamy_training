import 'package:flutter/material.dart';

class QuranItemWdget extends StatelessWidget {
  String suraName;
  String versesNum;

  QuranItemWdget({super.key, required this.suraName, required this.versesNum});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                suraName,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            )),
            VerticalDivider(),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                versesNum,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
