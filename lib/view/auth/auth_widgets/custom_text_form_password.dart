import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/app_colors.dart';

class CustomTextFormPassword extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final TextInputType keyboardType;
  final IconData preIcon;
  final IconData sufIcon;
  final bool obscure;
  final void Function() onPressed;
  const CustomTextFormPassword({super.key, required this.controller, required this.label, required this.hint, required this.keyboardType, required this.preIcon, required this.obscure, required this.onPressed, required this.sufIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: true,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 2,
              color: AppColors.arrowColor,
            ),
          ),
          prefixIcon: Icon(
            preIcon,
            color: AppColors.IconsColor,
          ),
          hintText: hint,
          labelText: label,
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(
              sufIcon,
            ),
          ),
        ),
      ),
    );
  }
}
