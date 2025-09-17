import 'package:flutter/material.dart';

class Offer {
  final String title;
  final String subtitle;
  final String imageUrl;

  Offer({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
}

class OfferCarousel extends StatelessWidget {
  final List<Offer> offers;

  const OfferCarousel({super.key, required this.offers});

  @override
  Widget build(BuildContext context) {
    if (offers.isEmpty) {
      return const SizedBox(
        height: 160,
        child: Center(child: Text("No offers available")),
      );
    }

    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16),
        itemCount: offers.length,
        itemBuilder: (context, index) {
          final offer = offers[index];
          return Container(
            width: 240,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(offer.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offer.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  offer.subtitle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.red, Colors.yellow]),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SizedBox(
                    height: 36,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.black,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      onPressed: () {
                        // You can add navigation or callback here
                      },
                      child: const Text(
                        "View Now",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
