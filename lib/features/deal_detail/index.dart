import 'package:flutter/material.dart';
import 'package:my_m3_app/features/deal_detail/component/first_section.dart';
import 'package:my_m3_app/features/deal_detail/component/second_section.dart';
import 'package:my_m3_app/features/deal_detail/component/third_section.dart';
import 'package:my_m3_app/features/deal_detail/component/fourth_section.dart';
import 'package:my_m3_app/features/deal_detail/component/fifth_section.dart';
import 'package:my_m3_app/features/deal_detail/component/sixth_section.dart';
import 'package:my_m3_app/features/deal_detail/component/seventh_section.dart';
import 'package:my_m3_app/features/deal_detail/component/eighth_section.dart';
import 'package:my_m3_app/features/deal_detail/component/ninth_section.dart';
import 'package:my_m3_app/features/deal_detail/component/tenth_section.dart';
import 'package:my_m3_app/features/deal_detail/component/eleventh_section.dart';
import 'package:my_m3_app/features/deal_detail/component/twelfth_section.dart';

class DealDetailPage extends StatefulWidget {
  const DealDetailPage({super.key});

  @override
  State<DealDetailPage> createState() => _DealDetailPageState();
}

class _DealDetailPageState extends State<DealDetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Use safe area and a scrollable column
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FirstSection(),
              SizedBox(height: 12),
              SecondSection(),
              SizedBox(height: 12),
              ThirdSection(),
              SizedBox(height: 12),
              FourthSection(),
              SizedBox(height: 12),
              FifthSection(),
              SizedBox(height: 12),
              SixthSection(),
              SizedBox(height: 12),
              SeventhSection(),
              SizedBox(height: 12),
              EighthSection(),
              SizedBox(height: 12),
              NinthSection(),
              SizedBox(height: 12),
              TenthSection(),
              SizedBox(height: 24),
              EleventhSection(),
              SizedBox(height: 12),
              TwelfthSection(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
