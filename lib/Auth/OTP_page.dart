import 'dart:async';

import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_config/global.dart';
import '../components/custom_button.dart';
import '../components/entry_field.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  Timer? _timer;
  int _timeLeft = 30;

  @override
  void initState() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_timeLeft == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _timeLeft--;
          });
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: latar,
      appBar: AppBar(
        backgroundColor: latar,
        shadowColor: latar,
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideDuration: const Duration(milliseconds: 300),
        slideCurve: Curves.linearToEaseOut,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Text(
              'Verifikasi',
              style: GoogleFonts.outfit(
                color: putih,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Masukkan kode verifikasi kamu yang telah dikirim pada nomor yang diberikan',
              style: GoogleFonts.outfit(
                color: grey,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 50),
            EntryField(
              label: 'Masukkan 6 digit OTP kamu',
              hintText: '',
              initialValue: '6 4 5 7 7 0',
            ),
            const SizedBox(height: 50),
            CustomButton(
              title: 'Kirim',
              onTap: () {
                context.goNamed('navbar');
              },
            ),
            const SizedBox(height: 36),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '0:${_timeLeft.toString().padLeft(2, '0')} min Tersisa',
                    style: GoogleFonts.outfit(
                      color: putih.withOpacity(0.5),
                      fontSize: 15,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _timeLeft = 30;
                    _timer?.cancel();
                    _timer = Timer.periodic(
                      const Duration(seconds: 1),
                      (Timer timer) {
                        if (_timeLeft == 0) {
                          setState(() {
                            timer.cancel();
                          });
                        } else {
                          setState(() {
                            _timeLeft--;
                          });
                        }
                      },
                    );
                    setState(() {});
                  },
                  child: Text(
                    'KIRIM ULANG',
                    style: GoogleFonts.outfit(
                      color: putih.withOpacity(0.5),
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
