import 'package:flutter/material.dart';
import 'package:wah/features/deal_detail/index.dart';

class Deal {
  final String title;
  final String description;
  final String img;
  final double price;
  final double oldPrice;
  final double rating;
  final int purchased;
  final String discount;

  Deal({
    required this.title,
    required this.description,
    required this.img,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.purchased,
    required this.discount,
  });
}

class FeaturedDealsSection extends StatelessWidget {
  const FeaturedDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Temporary deals data
    final items = [
      Deal(
        img: "assets/images/Product Image_1.png",
        title: "Festive Home Cleaning",
        description: "Includes kitchen, rooms & more...",
        price: 50,
        oldPrice: 100,
        rating: 4.5,
        purchased: 10,
        discount: "50% OFF",
      ),
      Deal(
        img: "assets/images/Product Image_2.png",
        title: "Live Music Concert Night",
        description: "Enjoy an amazing evening with live music",
        price: 75,
        oldPrice: 150,
        rating: 4.8,
        purchased: 25,
        discount: "50% OFF",
      ),
      Deal(
        img: "assets/images/Product Image_3.png",
        title: "Chef's Special Meal Box",
        description: "Delicious meals curated by top chefs",
        price: 40,
        oldPrice: 80,
        rating: 4.7,
        purchased: 18,
        discount: "50% OFF",
      ),
      Deal(
        img: "assets/images/Product Image_4.png",
        title: "Buy 1 Get 1 on Sneakers",
        description: "Trendy sneakers for your daily wear",
        price: 60,
        oldPrice: 120,
        rating: 4.6,
        purchased: 30,
        discount: "50% OFF",
      ),
    ];

    List<Widget> rows = [];
    for (int i = 0; i < items.length; i += 2) {
      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildProductCard(items[i], context),
            ),
            const SizedBox(width: 12),
            if (i + 1 < items.length)
              Expanded(
                child: _buildProductCard(items[i + 1], context),
              ),
          ],
        ),
      );
      rows.add(const SizedBox(height: 12));
    }

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: rows,
      ),
    );
  }

  Widget _buildProductCard(Deal deal, BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DealDetailPage(
                  deal: deal, // pass the deal to detail page
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Image.asset(
                    deal.img,
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        deal.discount,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 8,
                    top: 8,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 16,
                      child: Icon(Icons.favorite, color: Colors.red, size: 18),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                child: Text(
                  deal.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
                child: Text(
                  deal.description,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$${deal.price.toStringAsFixed(0)}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "\$${deal.oldPrice.toStringAsFixed(0)}",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                        const SizedBox(width: 2),
                        Text(deal.rating.toString(),
                            style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
                child: Text(
                  "${deal.purchased} Purchased",
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
