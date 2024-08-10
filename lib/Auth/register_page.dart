import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_config/global.dart';
import '../components/custom_button.dart';
import '../components/entry_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: latar,
      appBar: AppBar(
        backgroundColor: latar,
        surfaceTintColor: latar,
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideDuration: const Duration(milliseconds: 300),
        slideCurve: Curves.linearToEaseOut,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    Text(
                      'Daftar Sekarang yaahh',
                      style: GoogleFonts.outfit(
                        color: putih,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Kamu Belum Terdaftar',
                      style: GoogleFonts.outfit(
                        color: grey,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 28),
                    Stack(
                      children: [
                        Image.asset(
                          'assets/pic_profile.png',
                          height: 85,
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: ijo,
                            child: Icon(
                              Icons.camera_alt,
                              color: Theme.of(context).scaffoldBackgroundColor,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    EntryField(
                      label: 'Nomor Telpon kamu berapa?',
                      hintText: '',
                      initialValue: '987 654 3210',
                    ),
                    const SizedBox(height: 40),
                    EntryField(
                      label: 'Nama Lengkap kamu apa?',
                      hintText: '',
                      initialValue: 'Samantha Smith',
                    ),
                    const SizedBox(height: 40),
                    EntryField(
                      label: 'Email kamu apa',
                      hintText: '',
                      initialValue: 'samanthasmith@email.com',
                    ),
                    const SizedBox(height: 40),
                    EntryField(
                      label: 'Jenis Kelamin kamu apa?',
                      hintText: '',
                      initialValue: 'Belum memilih',
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.green,
                      ),
                      onTap: () {
                        _showGenderPicker(context);
                      },
                    ),
                    const SizedBox(height: 120),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 24,
              right: 24,
              bottom: 24,
              child: CustomButton(
                title: 'Selanjutnya',
                onTap: () {
                  context.goNamed('OTP');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showGenderPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Jenis Kelamin'),
          content: DropdownButton<String>(
            value: 'Pilih',
            onChanged: (String? newValue) {
              // Handle pemilihan jenis kelamin
            },
            items: <String>['Pilih', 'Laki-laki', 'Perempuan']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
