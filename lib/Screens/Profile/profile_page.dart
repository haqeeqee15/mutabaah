import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/custom_progress_indicator.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Akun",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 28),
        ),
      ),
      body: 
      ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(
                  top: 22,
                  left: 22,
                  right: 22,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hj Thoriq',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Level 1-100",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(height: 18),
                    const CustomProgressIndicator(subTasksCompleted: 2),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/ic_task copy.png',
                          height: 14,
                          color: Theme.of(context).hintColor,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '65 tasks',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 14),
                        ),
                        const SizedBox(width: 8),
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Theme.of(context).hintColor,
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.check_circle_outline,
                          size: 16,
                          color: Theme.of(context).hintColor,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '46%',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 14),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(
                            //     context, PageRoutes.profileScreen);
                          },
                          child: Text(
                            "lihat profile",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              PositionedDirectional(
                end: 20,
                top: 0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/profile_pic.png',
                    height: 70,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          buildTile(
            context,
            onTap: () {
              // Navigator.pushNamed(context, PageRoutes.faqsScreen);
            },
            icon: Icons.live_help,
            title: "FAQ",
            subtitle: "Dapatkan pertanyaan Anda dijawab",
          ),
          const SizedBox(height: 40),
          buildTile(
            context,
            onTap: () {
              // Navigator.pushNamed(context, PageRoutes.tncScreen);
            },
            icon: Icons.assignment,
            title: "Syarat & Ketentuan",
            subtitle: "Ketahui Ketentuan Penggunaan",
          ),
          const SizedBox(height: 40),
          buildTile(
            context,
            onTap: () {
              // Navigator.pushNamed(context, PageRoutes.privacyPolicyScreen);
            },
            icon: Icons.lock,
            title: "Kebijakan pribadi",
            subtitle: "Kebijakan Privasi Perusahaan",
          ),
          const SizedBox(height: 40),
          buildTile(
            context,
            onTap: () {
              // Navigator.maybePop(context);
            },
            icon: Icons.power_settings_new,
            title: "Keluar",
            subtitle: "Keluar dari akun",
          ),
        ],
      ),
    
    );
  }

  Widget buildTile(
    BuildContext context, {
    Function()? onTap,
    required IconData icon,
    required String title,
    required String subtitle,
    bool? isDropDown,
  }) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ),
                    Visibility(
                      visible: isDropDown ?? false,
                      child: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
