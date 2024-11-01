import 'package:flutter/material.dart';
import 'package:islamy_training/core/colors_manger.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          bulidSelectedLanguage(context, 'English'),
          const SizedBox(
            height: 10,
          ),
          bulidUnSelectedLanguage(context, 'العربيه'),
        ],
      ),
    );
  }

  Widget bulidSelectedLanguage(contex, String language) {
    return Row(
      children: [
        Text(
          language,
          style: Theme.of(contex).textTheme.displayMedium,
        ),
        const Spacer(),
        const Icon(Icons.check),
      ],
    );
  }

  Widget bulidUnSelectedLanguage(contex, String language) {
    return Row(
      children: [
        Text(
          language,
          style: Theme.of(contex).textTheme.displayMedium!.copyWith(
                color: ColorsManger.whiteColor,
              ),
        ),
      ],
    );
  }
}
