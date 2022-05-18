import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.lable,
    required this.onTap,
    this.height = 50,
    this.width = 300,
  }) : super(key: key);
  final String lable;
  final double width;
  final double height;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          lable,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
