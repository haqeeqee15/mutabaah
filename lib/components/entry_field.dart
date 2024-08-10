import 'package:belajarroutes/app_config/global.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EntryField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController? controller;
  final String? initialValue;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final bool? readOnly;
  final Function()? onTap;
  final TextStyle? style;

  const EntryField({
    Key? key,
    required this.label,
    required this.hintText,
    this.controller,
    this.initialValue,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines,
    this.readOnly,
    this.onTap,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty)
          Text(
            label,
            style: GoogleFonts.outfit(
              fontSize: 15,
              color: putih,
            ),
          ),
        if (label.isNotEmpty) const SizedBox(height: 4),
        TextFormField(
          onTap: onTap,
          readOnly: readOnly ?? false,
          style: GoogleFonts.outfit(color: ijo, fontSize: 15),
          initialValue: initialValue,
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ijo.withOpacity(0.3),
              ),
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.outfit(
              color: grey.withOpacity(0.5),
            ),
          ),
        ),
        
      ],
    );
  }
}
