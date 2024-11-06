import 'package:flutter/material.dart';

class PageViewContainerWidget extends StatelessWidget {
  const PageViewContainerWidget({
    super.key, required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          scale: 2,
        ),
      ),
    );
  }
}