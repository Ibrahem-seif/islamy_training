import 'package:flutter/material.dart';
import 'package:islamy_training/core/colors_manger.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManger.goldColor,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          bulidSelectedTheme(context, 'Light'),
          const SizedBox(
            height: 10,
          ),
          bulidUnSelectedTheme(context, 'Dark'),
        ],
      ),
    );
  }

  Widget bulidSelectedTheme(contex, String theme) {
    return Row(
      children: [
        Text(
          theme,
          style: Theme.of(contex).textTheme.displayMedium,
        ),
        const Spacer(),
        const Icon(Icons.check),
      ],
    );
  }

  Widget bulidUnSelectedTheme(contex, String theme) {
    return Row(
      children: [
        Text(
          theme,
          style: Theme.of(contex).textTheme.displayMedium!.copyWith(
                color: ColorsManger.whiteColor,
              ),
        ),
      ],
    );
  }
}
