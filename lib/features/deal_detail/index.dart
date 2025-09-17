import 'package:flutter/material.dart';
import 'package:wah/features/deal_detail/component/deal_detail_header.dart';
import 'package:wah/features/deal_detail/component/deal_image_carousel.dart';
import 'package:wah/features/deal_detail/component/deal_info_bar.dart';
import 'package:wah/features/deal_detail/component/deal_overview.dart';
import 'package:wah/features/deal_detail/component/deal_option_selector.dart';
import 'package:wah/features/deal_detail/component/vendor_info.dart';
import 'package:wah/features/deal_detail/component/customer_medial.dart';
import 'package:wah/features/deal_detail/component/review_card.dart';
import 'package:wah/features/deal_detail/component/reviews.dart';
import 'package:wah/features/deal_detail/component/view_all_reviews_btn.dart';
import 'package:wah/features/deal_detail/component/recommended_deals.dart';
import 'package:wah/features/deal_detail/component/add_to_cart_btn.dart';

class DealDetailPage extends StatefulWidget {
  const DealDetailPage({super.key});

  @override
  State<DealDetailPage> createState() => _DealDetailPageState();
}

class _DealDetailPageState extends State<DealDetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DealDetailHeader(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12),
              DealImageCarousel(),
              SizedBox(height: 12),
              DealInfoBar(),
              SizedBox(height: 12),
              DealOverview(),
              SizedBox(height: 12),
              DealOptionsSelector(),
              SizedBox(height: 12),
              VendorInfo(),
              SizedBox(height: 12),
              CustomerMedia(),
              SizedBox(height: 12),
              ReviewCard(),
              SizedBox(height: 12),
              Reviews(),
              SizedBox(height: 12),
              ViewAllReviewsBtn(),
              SizedBox(height: 24),
              RecommendedDeals(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AddToCartBtn(), // ✅ fixed at bottom
    );
  }
}
