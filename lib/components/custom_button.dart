import 'package:belajarroutes/app_config/global.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Widget? prefixIcon;

  const CustomButton(
      {Key? key, this.onTap, required this.title, this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60,
      onPressed: onTap,
      color: ijo,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (prefixIcon != null) prefixIcon ?? const SizedBox.shrink(),
          if (prefixIcon != null) const SizedBox(width: 20),
          Text(
            title,
            style: GoogleFonts.outfit(
                  color: hitam,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
