import 'package:flutter/material.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({
    super.key,
    this.value,
    required this.title,
    this.onChanged,
    this.padding,
  });

  final bool? value;
  final String title;
  final void Function(bool?)? onChanged;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value ?? false,
      onChanged: onChanged,
      title: Text(title),
      tileColor: Colors.transparent,
      activeColor: Colors.blueAccent,
      checkColor: Colors.blueAccent,
      contentPadding: padding ?? const EdgeInsets.symmetric(vertical: 12),
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
