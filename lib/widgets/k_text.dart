import 'package:flutter/material.dart';

class KText extends StatelessWidget {
  const KText({
    super.key,
    required this.value
  });
   final String value;
  @override
  Widget build(BuildContext context) {
    return Text(value,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),);
  }
}