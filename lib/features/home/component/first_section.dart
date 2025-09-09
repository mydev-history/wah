import 'package:flutter/material.dart';
import 'package:my_m3_app/features/home/component/menu.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Rectangle 2039.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => ProfileMenu.show(context),
                child: Image.asset("assets/images/person1.png", height: 60),
              ),
              const Text("Wah!",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Row(
                children: [
                  Icon(Icons.shopping_basket_outlined),
                  SizedBox(width: 12),
                  Icon(Icons.alarm),
                ],
              )
            ],
          ),
          const SizedBox(height: 16),

          // Row 2
          const Row(
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(width: 4),
              Text("Austin, TX"),
              SizedBox(width: 4),
              Icon(Icons.edit, size: 16),
            ],
          ),
          const SizedBox(height: 16),

          // Row 3
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search deals/communities",
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tune),
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Row 4 (categories)
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              children: [
                _buildCategory(Icons.local_grocery_store, "Groceries"),
                _buildCategory(Icons.checkroom, "Fashion"),
                _buildCategory(Icons.spa, "Spa"),
                _buildCategory(Icons.laptop, "Electronics"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(IconData icon, String label) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(30), right: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 6),
          Text(label, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
