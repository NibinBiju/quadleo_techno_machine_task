import 'package:flutter/material.dart';
import 'package:quadleo_techno_machine_task/core/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
          color: Color(0xFF4943D3),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Center(child: CustomTextWidget(text: text)),
      ),
    );
  }
}
