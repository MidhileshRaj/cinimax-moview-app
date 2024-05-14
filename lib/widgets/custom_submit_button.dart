import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    super.key,
    this.onTap, required this.tag, required this.height, required this.width
  });

  final double height;
  final double width;
  final String tag;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration:  BoxDecoration(color: const Color(0xFFFFCC00),borderRadius: BorderRadius.circular(10),
        ),child: Text(tag),),
    );
  }
}
