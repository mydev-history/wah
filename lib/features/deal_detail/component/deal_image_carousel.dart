import 'package:flutter/material.dart';

class DealImageCarousel extends StatefulWidget {
  const DealImageCarousel({super.key});

  @override
  State<DealImageCarousel> createState() => _DealImageCarouselState();
}

class _DealImageCarouselState extends State<DealImageCarousel> {
  final PageController _controller = PageController(viewportFraction: 0.95);
  int _page = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _buildPages() {
    // repeated same image 5 times
    return List.generate(
      5,
      (index) => ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/images/make real house cleaning service.png',
          fit: BoxFit.cover,
          height: 350,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = _buildPages();
    return Column(
      children: [
        SizedBox(
          height: 350,
          child: PageView.builder(
            controller: _controller,
            itemCount: pages.length,
            onPageChanged: (i) => setState(() => _page = i),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: pages[index],
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            pages.length,
            (i) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: _page == i ? 10 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: _page == i ? Colors.black : Colors.grey.shade400,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
