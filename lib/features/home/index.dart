import 'package:flutter/material.dart';
import 'package:wah/features/home/component/header.dart';
import 'package:wah/features/home/component/feature_deal_section.dart';
import 'package:wah/features/home/component/offer_carousel.dart';
import 'package:wah/features/home/component/category_selector.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int unseenCount = 3; // badge number
    const double headerHeight = 280; // approximate height of header

    // Temporary offers data
    final tempOffers = [
      Offer(
          title: "Buy 1 and Get 1",
          subtitle: "Limited Sale",
          imageUrl: "assets/images/offer-card.png"),
      Offer(
          title: "Festive Discount",
          subtitle: "Today Only",
          imageUrl: "assets/images/offer-card.png"),
      Offer(
          title: "Special Bundle",
          subtitle: "Grab Now",
          imageUrl: "assets/images/offer-card.png"),
    ];

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // Scrollable content
          Padding(
            padding: const EdgeInsets.only(top: headerHeight),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  OfferCarousel(offers: tempOffers),
                  const CategorySelector(),
                  const FeaturedDealsSection(),
                  const SizedBox(height: kBottomNavigationBarHeight + 80),
                ],
              ),
            ),
          ),

          // Fixed header at top
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(),
          ),

          // Fixed calendar badge
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

  // Circle with gradient and badge
  static Widget _buildCalendarBadge(int count) {
    return Container(
      padding: const EdgeInsets.all(3),
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
