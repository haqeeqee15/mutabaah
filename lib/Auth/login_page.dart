import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:belajarroutes/app_config/global.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../components/custom_button.dart';
import '../components/entry_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: latar,
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideDuration: const Duration(milliseconds: 300),
        slideCurve: Curves.linearToEaseOut,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    'assets/logo.png',
                    scale: 3.5,
                  ),
                ),
                const Spacer(),
                Text(
                  "Assalamua'alaikum",
                  style: GoogleFonts.outfit(color: putih, fontSize: 16),
                ),
                const SizedBox(height: 6),
                Text(
                  "Masuk Sekarang",
                  style: GoogleFonts.outfit(
                      color: putih, fontSize: 28, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                const EntryField(
                  label: "Nomor Telpon Anda",
                  hintText: "08212345678",
                ),
                const Spacer(),
                CustomButton(
                  title: "Mulai",
                  onTap: () {
                    context.goNamed('register');
                  },
                ),
                const Spacer(),
                Text(
                  "Atau Login dengan",
                  style: GoogleFonts.outfit(fontSize: 14, color: putih),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: buildSocialButton(
                        context,
                        'assets/social/ic_facebook.png',
                        "facebook",
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: buildSocialButton(
                        context,
                        'assets/social/ic_google.png',
                        "google",
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSocialButton(
    BuildContext context,
    String image,
    String title,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        // Navigator.pushNamed(context, LoginRoutes.signIn);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: ijo.withOpacity(0.2),
            width: 3,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 18,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: GoogleFonts.outfit(
                color: putih,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
