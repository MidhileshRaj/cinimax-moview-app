import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.inputType,
    this.regExp,
    required this.hintLabel,
    required this.controller,
    this.onChange,
    required this.secure, this.sufixIcon,
  });

  final TextInputType? inputType;
  final RegExp? regExp;
  final String hintLabel;
  final TextEditingController controller;
  final void Function(String)? onChange;
  final bool secure ;
  final Widget? sufixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1),
      width: MediaQuery.of(context).size.width * .75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hintLabel),
          const Gap(10),
          SizedBox(
            height: 70,
            child: TextFormField(
              onChanged: onChange,
              controller: controller,
              keyboardType: inputType,
              // Suggests email input type
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter your $hintLabel";
                } else {
                  if (regExp != null) {
                    if (!regExp!.hasMatch(value)) {
                      return "Please enter a valid $hintLabel";
                    } else {
                      return null;
                    }
                  } else {
                    return null;
                  }
                }
              },
              obscureText: secure,
              decoration: InputDecoration(
                suffixIcon: sufixIcon,
                hintText: hintLabel,
                hintStyle: const TextStyle(color: Colors.black26),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                      strokeAlign: BorderSide.strokeAlignCenter),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
