import 'package:flutter/material.dart';
import 'package:my_m3_app/features/home/component/first_section.dart';
import 'package:my_m3_app/features/home/component/fourth_section.dart';
import 'package:my_m3_app/features/home/component/second_section.dart';
import 'package:my_m3_app/features/home/component/third_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int unseenCount = 3; // badge number

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // Main scrollable content
          const SingleChildScrollView(
            child: Column(
              children: [
                FirstSection(),
                SecondSection(),
                ThirdSection(),
                FourthSection(),
                SizedBox(height: kBottomNavigationBarHeight + 80),
              ],
            ),
          ),

          // Fixed positioned calendar circle on the right, 10px above the footer
          Positioned(
            right: 16,
            bottom: 10,
            child: _buildCalendarBadge(unseenCount),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
          NavigationDestination(icon: Icon(Icons.inventory), label: "My stuff"),
          NavigationDestination(icon: Icon(Icons.chat), label: "Chat"),
          NavigationDestination(icon: Icon(Icons.groups), label: "Community"),
        ],
      ),
    );
  }

  // Circle with gradient and badge INSIDE
  Widget _buildCalendarBadge(int count) {
    return Container(
      padding: const EdgeInsets.all(3), // white border
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Container(
        width: 56,
        height: 56,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Colors.red, Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Icon(Icons.calendar_today, color: Colors.white),

            // Badge inside the circle (top-right)
            if (count > 0)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$count',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
