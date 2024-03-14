
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/core/constant/app_colors.dart';
import 'package:food_delivery/core/constant/app_sizes.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final TextInputType keyboardType;
  final IconData preIcon;
  final bool obscure;
  const CustomTextFormFieldWidget({super.key,
  required this.preIcon,
  required this.controller,
  required this.label,
  required this.obscure,
  required this.hint,
    required this.keyboardType,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: (value)
      {
      if(value!.isEmpty)
      {
      print('must not be empty');
      }
      return null;
      },
      decoration: InputDecoration(
      hintText: hint,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: TextStyle(
      fontSize: 18,
      color: Colors.grey[400],
      ),
      enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
      width: 2,
      color: AppColors.arrowColor,
      ),
      ),

      label: Text(
  label,
  style: TextStyle(
  fontSize: AppSizes.size18,
  color: AppColors.fontColor,
  ),

  ),
  prefixIcon: Icon(
    preIcon,
      color: AppColors.IconsColor,
  ),
  ),
  obscureText: obscure,
  ),
    );
  }
}

