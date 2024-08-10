import 'package:flutter/material.dart';

class SholatPage extends StatefulWidget {
  const SholatPage({super.key});

  @override
  State<SholatPage> createState() => _SholatPageState();
}

class _SholatPageState extends State<SholatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Jadwal Sholat",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 28),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            iconSize: 16,
            icon: const ImageIcon(
              AssetImage('assets/icons/ic_search.png'),
            ),
          ),
          IconButton(
            onPressed: () {},
            iconSize: 16,
            icon: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: ImageIcon(
                    AssetImage('assets/icons/ic_notifiaction.png'),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: const Color(0xff00aeef),
                    child: Text(
                      '2',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            fontSize: 8,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: ClipOval(
              child: Image.asset(
                'assets/profile_pic.png',
                height: 35,
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      
    );
  }
}