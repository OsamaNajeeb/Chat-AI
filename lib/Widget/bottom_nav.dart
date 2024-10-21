import 'package:chat_ai/Widget/Themes/appcolors.dart';
import 'package:chat_ai/Widget/Themes/media.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppMedia.bgImage), // Your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Bottom UI
          Positioned(
            bottom: 28,
            left: 18,
            right: 18,
            height: 60,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: AppColors.navColors.withOpacity(0.8),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildItem(Icons.home, "Home", 0),
                    _buildItem(Icons.message, "Message", 1),
                    _buildItem(Icons.settings, "Settings", 2),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItem(IconData icon, String label, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: index == 0 ? Colors.lime : Colors.grey,
          size: 20,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: index == 0 ? Colors.lime : Colors.grey,
          ),
        )
      ],
    );
  }
}
