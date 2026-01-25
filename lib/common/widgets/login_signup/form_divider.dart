import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Divider(indent: 60, endIndent: 5, thickness: 0.5)),
        Text(title, style: Theme.of(context).textTheme.labelMedium),
        Expanded(child: Divider(indent: 5, endIndent: 60, thickness: 0.5)),
      ],
    );
  }
}
